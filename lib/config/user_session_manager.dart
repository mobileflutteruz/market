import 'package:injectable/injectable.dart';
import 'token_data_source.dart';
import 'user_data_source.dart';

@Singleton()
class UserSessionManager {
  final TokenDataSource _tokenDataSource;
  final UserDataDataSource _userDataDataSource;

  UserSessionManager(
    this._tokenDataSource,
    this._userDataDataSource,
  );

  Future<void> saveUserToken(String token) async {
    await _tokenDataSource.saveToken(token);
  }

  Future<void> saveGuestToken(String token) async {
    await _tokenDataSource.saveGuestUser(token);
  }

  Future<String?> getToken() async {
    return await _tokenDataSource.getToken();
  }

  Future<String?> getGuestToken() async {
    return await _tokenDataSource.getGuestUser();
  }

  Future<bool> isFirstRun() async {
    return await _userDataDataSource.isFirstRun();
  }

  Future<String?> getUserId() async {
    return await _userDataDataSource.getUserId();
  }

  Future<void> saveUserId(String userId) async {
    await _userDataDataSource.saveUserId(userId);
  }

  Future<void> clearUserSession() async {
    await _tokenDataSource.clearUser();
    await _tokenDataSource.clearToken();
  }
}
