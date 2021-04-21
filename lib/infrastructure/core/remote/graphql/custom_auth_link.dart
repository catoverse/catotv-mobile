import 'dart:async';

import 'package:graphql/client.dart';
import 'package:meta/meta.dart';

typedef _RequestTransformer = FutureOr<Request> Function(Request request);

class CustomAuthLink extends _AsyncReqTransformLink {
  CustomAuthLink({
    @required this.getToken,
    this.headerKey = 'Authorization',
  }) : super(requestTransformer: transform(headerKey, getToken));

  /// Authentication callback. Note – must include prefixes, e.g. `'Bearer $token'`
  final FutureOr<String> Function() getToken;

  /// Header key to set to the result of [getToken]
  final String headerKey;

  static _RequestTransformer transform(
    String headerKey,
    FutureOr<String> Function() getToken,
  ) =>
      (Request request) async {
        final token = await getToken();
        return request.updateContextEntry<HttpLinkHeaders>(
          (headers) => HttpLinkHeaders(
            headers: <String, String>{
              ...headers?.headers ?? <String, String>{},
              if (token != null) headerKey: token,
            },
          ),
        );
      };
}

/// Version of [TransformLink] that handles async transforms
class _AsyncReqTransformLink extends Link {
  final _RequestTransformer requestTransformer;

  _AsyncReqTransformLink({
    this.requestTransformer,
  }) : assert(requestTransformer != null);

  @override
  Stream<Response> request(
    Request request, [
    NextLink forward,
  ]) async* {
    final req = requestTransformer != null
        ? await requestTransformer(request)
        : request;

    yield* forward(req);
  }
}
