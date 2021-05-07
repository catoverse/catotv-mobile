import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/result/failure.dart';
import 'package:feed/core/models/result/result.dart';
import 'package:graphql/client.dart';

/// The [RemoteClient] is a wrapper class to abstract [GraphQLClient]
/// Here are the reasons why we need an external class -
/// 1. We can abstract [grapql] package from our code.
/// 2. We can additional functionality for our client
///   (a) Checking for [ConnectivityStatus] while processing query
///   (b) Handling exceptions by writing custom classes for exceptions
///   (c) Extracting Result to required types
///
class RemoteClient {
  final GraphQLClient _graphQLClient = locator<GraphQLClient>();
  String jwtToken = "";

  updateToken({required String newToken}) {
    this.jwtToken = newToken;
  }

  /// Process the given [Query] String and fetches data
  /// with awareness of [ConnectivityStatus]
  Future<Result<Failure, dynamic>> processQuery(
      {required String query,
      Map<String, dynamic> variables = const {}}) async {
    final QueryOptions options = QueryOptions(
        document: gql(query),
        variables: variables,
        fetchPolicy: FetchPolicy.networkOnly);

    var result = await _graphQLClient.query(options);

    if (!result.hasException)
      return Result.success(result.data);
    else
      return Result.failed(Failure.exception(result.exception!));
  }

  /// Handles the given [mutation]
  Future<Result<Failure, dynamic>> mutation(String mutationQuery,
      {Map<String, dynamic> variables = const {}}) async {
    final MutationOptions options = MutationOptions(
        document: gql(mutationQuery),
        variables: variables,
        fetchPolicy: FetchPolicy.networkOnly);

    final QueryResult result = await _graphQLClient.mutate(options);
    if (!result.hasException)
      return Result.success(result.data);
    else
      return Result.failed(Failure.exception(result.exception!));
  }
}
