import 'package:feed/app/app.locator.dart';
import 'package:feed/remote/api/api_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final APIService apiService = locator<APIService>();
  getTopics() async {
    await apiService.getTopics();
  }
}
