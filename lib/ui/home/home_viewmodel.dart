import 'package:feed/core/mixins/snackbar_helper.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel with SnackbarHelper {
  int _index = 0;
  int get index => _index;

  void changeTab(int index) {
    _index = index;
    notifyListeners();
  }
}
