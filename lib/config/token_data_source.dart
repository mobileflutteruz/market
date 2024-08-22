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

  // Save guest user data
  Future<void> saveGuestUser(String value) async {
    print("Saving guest token: $value");
    await _secureStorage.write(key: _guestKey, value: value);
  }

  // Retrieve guest user data
  Future<String?> getGuestUser() async {
    print("Retrieving guest token: $_guestKey");
    return await _secureStorage.read(key: _guestKey);
  }

  // Save user data
  Future<void> setUser(Map<String, dynamic> json) async {
    String user = jsonEncode(json);
    await _secureStorage.write(key: _userKey, value: user);
  }

  // Retrieve user data
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

  // Clear user data
  Future<void> clearUser() async {
    await _secureStorage.delete(key: _userKey);
  }

  // Retrieve favourites list
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

  // Save favourites list
  Future<void> setFavourites({required List<String> values}) async {
    await _secureStorage.write(key: _favouritesKey, value: jsonEncode(values));
  }

  // Clear favourites list
  Future<void> clearFavourites() async {
    await _secureStorage.delete(key: _favouritesKey);
  }

  // Save baskets data
  Future<void> setBaskets({required String value}) async {
    await _secureStorage.write(key: _basketsKey, value: value);
  }

  // Retrieve baskets data
  Future<String?> getBaskets() async {
    return await _secureStorage.read(key: _basketsKey);
  }

  // Save orders data
  Future<void> setMyOrder({required String value}) async {
    await _secureStorage.write(key: _ordersKey, value: value);
  }

  // Retrieve orders data
  Future<String?> getMyOrder() async {
    return await _secureStorage.read(key: _ordersKey);
  }

  // Save token
  Future<void> saveToken(String token) async {
    await _secureStorage.write(key: _tokenKey, value: token);
  }

  // Retrieve token
  Future<String?> getToken() async {
    return await _secureStorage.read(key: _tokenKey);
  }

  // Clear token
  Future<void> clearToken() async {
    await _secureStorage.delete(key: _tokenKey);
  }
}
