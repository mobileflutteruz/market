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
      return true; // Default to true in case of error  
    }  
  }  

  Future<void> saveUserId(String userId) async {  
    try {  
      await _secureStorage.write(key: _userIdKey, value: userId);  
    } catch (e) {  
      print("Error saving user ID: $e");  
    }  
  }  

  Future<String?> getUserId() async {  
    try {  
      final userId = await _secureStorage.read(key: _userIdKey);  
      return userId;  
    } catch (e) {  
      print("Error retrieving user ID: $e");  
      return null;  
    }  
  }  

  Future<void> clearUserData() async {  
    try {  
      await _secureStorage.delete(key: _userIdKey);  
    } catch (e) {  
      print("Error clearing user data: $e");  
    }  
  }  
}