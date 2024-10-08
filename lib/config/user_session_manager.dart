import 'package:injectable/injectable.dart';
import 'token_data_source.dart';
import 'user_data_source.dart';

@singleton
class UserSessionManager {
  final TokenDataSource _tokenDataSource;
  final UserDataDataSource _userDataSource;

  UserSessionManager(
    this._tokenDataSource,
    this._userDataSource,
  );

  Future<void> saveUserToken(String token) async {
    await _tokenDataSource.saveToken(token);
  }

  Future<void> saveGuestToken(String token) async {
    await _tokenDataSource.saveGuestToken(token);
  }

  Future<String?> getToken() async {
    return await _tokenDataSource.getToken();
  }

  Future<String?> getGuestToken() async {
    return await _tokenDataSource.getGuestToken();
  }

  Future<bool> isFirstRun() async {
    return await _userDataSource.isFirstRun();
  }

  Future<String?> getUserId() async {
    return await _userDataSource.getUserId();
  }

  Future<void> saveUserId(String userId) async {
    await _userDataSource.saveUserId(userId);
  }

  Future<void> clearUserSession() async {
    await _tokenDataSource.clearUser();
    await _tokenDataSource.clearToken();
  }
}