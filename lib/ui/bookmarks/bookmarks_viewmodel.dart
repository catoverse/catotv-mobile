import 'package:stacked/stacked.dart';

class BookmarksViewModel extends BaseViewModel {
  List<String> bookmarks = [];

  fetchBookmarks() {
    ///TODO: get bookmarks from `hive`
  }
}
