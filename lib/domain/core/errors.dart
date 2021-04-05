
class NotAuthenticatedError extends Error {
  @override
  String toString() {
    return 'Signin is required in order to access the content.';
  }
}

class NoConnectivityError extends Error {
  @override
  String toString() {
    return 'Error connecting to the server. Please check your internet connection.';
  }
}

class ServerError extends Error {

  final String detail;

  ServerError({this.detail = ""});

  @override
  String toString() {
    return 'Server Error. $detail';
  }
}

class ParserError extends Error {

  final String detail;

  ParserError({this.detail = ""});

  @override
  String toString() {
    return 'Parser Error. $detail';
  }
}