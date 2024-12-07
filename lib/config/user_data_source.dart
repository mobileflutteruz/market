import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable()
class UserDataDataSource {
  static const _firstRunKey = 'token';
  static const _userIdKey = 'user_id_key';

  final FlutterSecureStorage _secureStorage;
  final SharedPreferences _sharedPreferences;

  UserDataDataSource(this._secureStorage, this._sharedPreferences);

  Future<bool> isFirstRun() async {
    try {
      final isFirstRun = _sharedPreferences.getBool(_firstRunKey) ?? true;
      if (isFirstRun) {
        print("Is First Run $isFirstRun");
        await _sharedPreferences.setBool(_firstRunKey, false);
      }
      return isFirstRun;
    } catch (e) {
      print("Error checking first run: $e");
      return true;
    }
  }

  Future<bool> isFirstRunClear() async {
    try {
      // Check if the 'first run' key is already set
      final isFirstRun = _sharedPreferences.getBool(_firstRunKey) ?? true;
      if (isFirstRun) {
        print("Is First Run: $isFirstRun");
        await _sharedPreferences.clear(); // Clear all data if it's the first run
        await _sharedPreferences.setBool(_firstRunKey, false); // Set 'first run' key to false
      }
      return isFirstRun;
    } catch (e) {
      print("Error checking first run: $e");
      return true;
    }
  }


  Future<void> saveUserId(int userId) async {
    try {
      await _secureStorage.write(key: _userIdKey, value: userId.toString());
    } catch (e) {
      print("Error saving user ID: $e");
    }
  }

  Future<String?> getUserId() async {
    try {
      final userId = await _secureStorage.read(key: _userIdKey);
      return userId;
    } catch (e) {
      print("Error getting user ID: $e");
      return null;
    }
  }

  Future<void> clearUserData() async {
    try {
      await _secureStorage.deleteAll();
    } catch (e) {
      print("Error clearing user data: $e");
    }
  }
}