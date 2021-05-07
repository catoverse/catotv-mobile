import 'dart:async';

import 'package:graphql/client.dart';

typedef _RequestTransformer = FutureOr<Request> Function(Request request);

/// While interacting with [graphql] we need to pass
/// authToken : "__actualtoken__"
/// We can't pass this with regular [Link] and [CustomAuthLink] comes to rescue
class CustomAuthLink extends _AsyncReqTransformLink {
  CustomAuthLink({
    required this.getToken,
    this.headerKey = 'Authorization',
  }) : super(transform(headerKey, getToken));

  /// Authentication callback. Note – must include prefixes, e.g. `'Bearer $token'`
  final FutureOr<String?> Function() getToken;

  /// Header key to set to the result of [getToken]
  final String headerKey;

  static _RequestTransformer transform(
          String headerKey, FutureOr<String?> Function() getToken) =>
      (Request request) async {
        final token = await getToken();
        return request.updateContextEntry<HttpLinkHeaders>(
          (headers) => HttpLinkHeaders(
            headers: <String, String>{
              ...headers?.headers ?? <String, String>{},
              if (token is String) headerKey: token,
            },
          ),
        );
      };
}

/// Version of [TransformLink] that handles async transforms
class _AsyncReqTransformLink extends Link {
  final _RequestTransformer requestTransformer;

  _AsyncReqTransformLink(this.requestTransformer);

  @override
  Stream<Response> request(Request request, [forward]) async* {
    final transformedRequest = await requestTransformer(request);

    yield* forward!(transformedRequest);
  }
}
