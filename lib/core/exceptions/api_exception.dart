class GraphQLException implements Exception {
  final String message;

  GraphQLException({
    required this.message,
  });

  @override
  String toString() {
    return 'GraphQLException: $message';
  }
}

class ServerError extends Error {}

class NoConnectivityError extends Error {}
