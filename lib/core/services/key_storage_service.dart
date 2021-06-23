import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KeyStorageService {
  final _sharedPrefs = locator<SharedPreferences>();
  final _log = getLogger("KeyStorage Service");

  Future<void> save<T>(String key, T content) async {
    _log.v('(Saving) key: $key value: $content');

    if (content is String) {
      await _sharedPrefs.setString(key, content);
    }
    if (content is bool) {
      await _sharedPrefs.setBool(key, content);
    }
    if (content is int) {
      await _sharedPrefs.setInt(key, content);
    }
    if (content is double) {
      await _sharedPrefs.setDouble(key, content);
    }
    if (content is List<String>) {
      await _sharedPrefs.setStringList(key, content);
    }
  }

  dynamic get(String key) {
    final value = _sharedPrefs.get(key);

    _log.v('(Fetching) key: $key value: $value');

    return value;
  }
}
