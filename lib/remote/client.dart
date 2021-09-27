import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.logger.dart';
import 'package:feed/core/constants/keys.dart';
import 'package:feed/core/exceptions/api_exception.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/environment_service.dart';
import 'package:feed/remote/connectivity/connectivity_service.dart';
import 'package:feed/remote/custom_link.dart';
import 'package:graphql/client.dart';
import 'package:dio/dio.dart' as dio;

/// The [RemoteClient] is a wrapper class to abstract [GraphQLClient]
/// Here are the reasons why we need an external class -
/// 1. We can abstract [grapql] package from our code.
/// 2. We can additional functionality for our client
///   (a) Checking for [ConnectivityStatus] while processing query
///   (b) Handling exceptions by writing custom classes for exceptions
///   (c) Extracting Result to required types
///
class RemoteClient {
  final _log = getLogger("Graphql Client");
  final _connectivity = locator<ConnectivityService>();
  final _environmentService = locator<EnvironmentService>();

  late GraphQLClient _graphQLClient;
  String jwtToken = "";

  RemoteClient() {
    _graphQLClient = getInstance();
  }

  /// Returns [GraphQLClient] with CustomAuthLink
  ///
  /// The [CustomAuthLink] is used to pass authToken for API calls
  GraphQLClient getInstance() {
    String url = _environmentService.getValue(kGraphqlApiEnvKey);

    final _httpLink = HttpLink(url);

    final _authLink = CustomAuthLink(
        getToken: () {
          return jwtToken;
        },
        headerKey: "authToken");

    const _errorLink = ErrorLink();

    final Link _link = _authLink.concat(_httpLink).concat(_errorLink);

    return GraphQLClient(
      cache: GraphQLCache(),
      link: _link,
    );
  }

  /// Updates the [authToken] on User Login or Signup
  updateToken({required String newToken}) {
    _log.v("Updated authToken to $newToken");
    jwtToken = newToken;
  }

  /// Process the given [Query] String and fetches data
  /// with awareness of [ConnectivityStatus]
  Future<Result<Failure, dynamic>> processQuery(
      {required String query,
      Map<String, dynamic> variables = const {}}) async {
    bool hasInternet = await _connectivity.isConnected;

    if (!hasInternet) {
      return Result.failed(Failure.error(NoConnectivityError()));
    }

    final QueryOptions options = QueryOptions(
        document: gql(query),
        variables: variables,
        fetchPolicy: FetchPolicy.networkOnly);

    try {
      final QueryResult result = await _graphQLClient.query(options);
      return _processResult(result);
    } catch (err) {
      _log.e('failed to perform graphql query due to server error');
      return Result.failed(Failure.error(ServerError()));
    }
  }

  /// Handles the given [mutation]
  Future<Result<Failure, dynamic>> mutation(String mutationQuery,
      {Map<String, dynamic> variables = const {}}) async {
    bool hasInternet = await _connectivity.isConnected;

    if (!hasInternet) {
      return Result.failed(Failure.error(NoConnectivityError()));
    }

    final MutationOptions options = MutationOptions(
        document: gql(mutationQuery),
        variables: variables,
        fetchPolicy: FetchPolicy.networkOnly);

    try {
      final QueryResult result = await _graphQLClient.mutate(options);
      return _processResult(result);
    } catch (err) {
      _log.e('failed to perform mutation due to server error');
      return Result.failed(Failure.error(ServerError()));
    }
  }

  /// A helper function to process result
  /// Checks if there's an [Error] or [Exception]
  Future<Result<Failure, dynamic>> _processResult(QueryResult result) async {
    if (result.hasException && result.exception != null) {
      _log.e(result.exception);
      return Result.failed(Failure.exception(GraphQLException(
          message: "Failed to fetch result from graphql ${result.exception}")));
    }

    if (result.data == null) {
      return Result.failed(Failure.error(ServerError()));
    }

    return Result.success(result.data);
  }

  Future<Result<Failure, dynamic>> postDio(
    String url,
    Map<String, dynamic> body,
  ) async {
    bool hasInternet = await _connectivity.isConnected;

    if (!hasInternet) {
      return Result.failed(Failure.error(NoConnectivityError()));
    }

    try {
      final result = await dio.Dio().post(
        url,
        data: body,
        options: dio.Options(
          responseType: dio.ResponseType.json,
          followRedirects: false,
        ),
      );

      return Result.success(result.data);
    } catch (err) {
      _log.e('failed to perform http post due to server error');
      return Result.failed(Failure.error(ServerError()));
    }
  }

}
