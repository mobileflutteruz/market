import 'package:injectable/injectable.dart';
import 'token_data_source.dart';
import 'user_data_source.dart';

@Singleton()
class UserSessionManager {
  @Injectable()
  final TokenDataSource _tokenDataSource;

  @Injectable()
  final UserDataDataSource _userDataDataSource;

  UserSessionManager(
    this._tokenDataSource,
    this._userDataDataSource,
  );

  Future<bool> isFirstRun() async {
    return _userDataDataSource.isFirstRun();
  }

  Future<bool> isUserLoggedIn() async {
    final token = await getToken();
    return token != null && token.isNotEmpty;
  }

  Future<void> saveUserToken(String token) async {
    await _tokenDataSource.saveToken(token);
  }

  Future<String?> getToken() async {
    return await _tokenDataSource.getGuestUser();
  }

  Future<String?> getUserId() async {
    final userData = await _userDataDataSource.getUserId();
    return userData;
  }

  Future<void> saveUserId(String userId) async {
    await _userDataDataSource.saveUserId(userId);
  }

  Future<void> clearUserSession() async {
    await _tokenDataSource.clearUser();
    await _tokenDataSource.clearToken();
  }

  Future<void> saveToken(String token) async {
    await _tokenDataSource.saveGuestUser(token);
  }
}
