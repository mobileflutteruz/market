import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable()
class UserDataDataSource {
  static const _firstRunKey = 'first_run';
  static const _userIdKey = 'user_id_key';

  final FlutterSecureStorage _secureStorage;
  final SharedPreferences _sharedPreferences;

  UserDataDataSource(this._secureStorage, this._sharedPreferences);

  Future<bool> isFirstRun() async {
    final isFirstRun = _sharedPreferences.getBool(_firstRunKey) ?? true;
    if (isFirstRun) {
      await _sharedPreferences.setBool(_firstRunKey, false);
    }
    return isFirstRun;
  }

  Future<void> saveUserId(String userId) async {
    await _secureStorage.write(key: _userIdKey, value: userId.toString());
  }

  Future<String?> getUserId() async {
    final userId = await _secureStorage.read(key: _userIdKey);

    return userId;
  }

  Future<void> clearUserData() async {
    await _secureStorage.delete(key: _userIdKey);
  }
}
