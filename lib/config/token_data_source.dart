import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/domain/model/auth/auth_resposne/auth_response.dart';

@Injectable()
class TokenDataSource {
  final FlutterSecureStorage _secureStorage;

  TokenDataSource(this._secureStorage);

  final String _tokenKey = "token";
  final String _favouritesKey = "favourites";
  final String _basketsKey = "baskets";
  final String _ordersKey = "orders";
  final String _guestKey = "guest";
  final String _userKey = "user";

  Future<void> saveGuestUser(String value) async {
    print("Saving guest token: $value");
    await _secureStorage.write(key: _guestKey, value: value);
  }

  Future<String?> getGuestUser() async {
    print("Retrieving guest token: $_guestKey");
    return await _secureStorage.read(key: _guestKey);
  }

  Future<void> setUser(Map<String, dynamic> json) async {
    String user = jsonEncode(json);
    await _secureStorage.write(key: _userKey, value: user);
  }

  Future<AuthResponse?> getUser() async {
    String? userString = await _secureStorage.read(key: _userKey);
    if (userString != null) {
      try {
        Map<String, dynamic> json = jsonDecode(userString);
        return AuthResponse.fromJson(json);
      } catch (e) {
        print("Error decoding user data: $e");
        return null;
      }
    }
    return null;
  }

  Future<void> clearUser() async {
    await _secureStorage.delete(key: _userKey);
  }

  Future<List<String>?> getFavourites() async {
    String? favouritesString = await _secureStorage.read(key: _favouritesKey);
    if (favouritesString != null) {
      try {
        return List<String>.from(jsonDecode(favouritesString));
      } catch (e) {
        print("Error decoding favourites: $e");
        return null;
      }
    }
    return null;
  }

  Future<void> setFavourites({required List<String> values}) async {
    await _secureStorage.write(key: _favouritesKey, value: jsonEncode(values));
  }

  Future<void> clearFavourites() async {
    await _secureStorage.delete(key: _favouritesKey);
  }

  Future<void> setBaskets({required String value}) async {
    await _secureStorage.write(key: _basketsKey, value: value);
  }

  Future<String?> getBaskets() async {
    return await _secureStorage.read(key: _basketsKey);
  }

  Future<void> setMyOrder({required String value}) async {
    await _secureStorage.write(key: _ordersKey, value: value);
  }

  Future<String?> getMyOrder() async {
    return await _secureStorage.read(key: _ordersKey);
  }

  Future<void> saveToken(String token) async {
    await _secureStorage.write(key: _tokenKey, value: token);
  }

  Future<String?> getToken() async {
    return await _secureStorage.read(key: _tokenKey);
  }

  Future<void> clearToken() async {
    await _secureStorage.delete(key: _tokenKey);
  }
}
