import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/video/video.dart';
import 'package:feed/core/services/feed_service/feed_service.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:stacked/stacked.dart';

abstract class FeedViewModel extends BaseViewModel {
  final FeedService apiService = locator<FeedService>();

  static const int pageSize = 10;

  Future<void> fetchPage(
      int pageKey, PagingController<int, Video> controller) async {
    try {
      final newItems = await apiService.fetchVideos(skip: pageKey);

      final int nextPageKey = pageKey + newItems.length;
      controller.appendPage(newItems, nextPageKey);
    } catch (error) {
      controller.error = error;
    }
  }
}
