class GraphQLException implements Exception {
  final String message;

  GraphQLException({
    required this.message,
  });

  @override
  String toString() {
    return 'ApiException: $message';
  }
}

class ServerError extends Error {}

class NoConnectivityError extends Error {}
