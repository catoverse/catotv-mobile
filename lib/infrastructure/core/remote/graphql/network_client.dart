import 'dart:async';

import 'package:cato_feed/domain/core/errors.dart';
import 'package:cato_feed/domain/core/failure.dart';
import 'package:cato_feed/domain/core/i_logger.dart';
import 'package:cato_feed/infrastructure/core/remote/graphql/custom_auth_link.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';
import 'package:cato_feed/domain/core/result.dart';

typedef JwtResolver = Future<String> Function();
typedef IsInternetAvailable = Future<bool> Function();

/// A base client for network that wraps graphQl library
class NetworkClient {
  final String apiEndpoint;
  final JwtResolver jwtResolver;
  final String jwtHeaderKey;
  final IsInternetAvailable isConnected;
  final ILogger logger;

  HttpLink _httpLink;
  CustomAuthLink _authLink;
  ErrorLink _errorLink;
  GraphQLClient _client;

  NetworkClient({
    @required this.apiEndpoint,
    @required this.jwtResolver,
    @required this.logger,
    @required this.isConnected,
    this.jwtHeaderKey = "Authorization",
  }) {
    _initializeClient();
  }

  /// Initializes the [NetworkClient]'s internal states.
  void _initializeClient() async {
    _httpLink = HttpLink(uri: apiEndpoint);
    _authLink = CustomAuthLink(getToken: jwtResolver, headerKey: jwtHeaderKey);
    _errorLink = ErrorLink(errorHandler: (ErrorResponse response) {
      logger.logException(response.exception);
    });
    final Link link = _authLink.concat(_httpLink).concat(_errorLink);

    _client = GraphQLClient(link: link, cache: InMemoryCache());
  }

  /// Wrapper around graphQl library's query function with error handling support.
  ///
  /// Use this to make query with graphQl
  Future<Result<Failure, dynamic>>  query(String query,
      {Map<String, dynamic> variables = const {}}) async {
    var hasInternet = await isConnected();
    if (!hasInternet) {
      return Result.fail(Failure.error(NoConnectivityError()));
    }

    final QueryOptions options = QueryOptions(
        documentNode: gql(query),
        variables: variables,
        fetchPolicy: FetchPolicy.networkOnly);
    try {
      final QueryResult result = await _client.query(options);
      return _processResult(result);
    } catch (err) {
      logger.logException(err,  msg: 'On network_client.dart mutation');
      return Result.fail(Failure.error(ServerError(detail: 'Error while connecting to server.')));
    }
  }

  /// Wrapper around graphQl library's mutation function with error handling support.
  ///
  /// Use this to make mutation with graphQl
  Future<Result<Failure, dynamic>> mutation(
      String mutationQuery, Map<String, dynamic> variables) async {
    var hasInternet = await isConnected();
    if (!hasInternet) {
      return Result.fail(Failure.error(NoConnectivityError()));
    }

    final MutationOptions options = MutationOptions(
        documentNode: gql(mutationQuery),
        variables: variables,
        fetchPolicy: FetchPolicy.networkOnly);

    try {
      final QueryResult result = await _client.mutate(options);
      return _processResult(result);
    } catch (err) {
      logger.logException(err, msg: 'On network_client.dart mutation');
      return Result.fail(Failure.error(ServerError(detail: 'Error while connecting to server.')));
    }
  }

  // For internal use case to handle common exception from query and mutation.
  Future<Result<Failure, dynamic>> _processResult(QueryResult result) async {
    if (result.hasException) {
      logger.logException(result.exception);
      return Result.fail(Failure.exception(result.exception));
    }

    if (result.data == null) {
      return Result.fail(Failure.error(ServerError()));
    }

    return Result.data(result.data);
  }
}
