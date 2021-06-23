import 'package:feed/core/services/video_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../helpers/mock_data.dart';
import '../helpers/test_helpers.dart';

VideoService _getService() => VideoService();

void main() {
  group('VideoService Test -', () {
    setUp(() => registerServices());
    tearDown(() => unregisterServices());

    group('getStream -', () {
      test(
          "when there is link available in the database, it should return the same url",
          () async {
        var service = _getService();
        var result = await service.getStream(SampleVideoUrl);
        expect(result, SampleStreamUrl);
      });

      test(
          "when there is link available in the database, it should not fetch from explode",
          () async {
        var explode = getAndRegisterExplodeService();
        var service = _getService();
        await service.getStream(SampleVideoUrl);
        verifyNever(explode.getStreamUrl(SampleVideoUrl));
      });

      group("when there is no link available in the database", () {
        test("it should call explode service", () async {
          getAndRegisterAPIService(isVideoCached: false);
          var explode = getAndRegisterExplodeService();
          var service = _getService();
          await service.getStream(SampleVideoUrl);
          verify(explode.getStreamUrl(SampleVideoUrl));
        });

        test("it should also post the link to database", () async {
          var apiService = getAndRegisterAPIService(isVideoCached: false);
          var service = _getService();
          await service.getStream(SampleVideoUrl);
          verify(apiService.postVideoStream(SampleWatchId, SampleStreamUrl));
        });
      });
    });
  });
}
