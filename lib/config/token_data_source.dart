import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/domain/model/auth/auth_resposne/auth_response.dart';

@Injectable()
class TokenPreference {
  final FlutterSecureStorage _secureStorage;

  TokenPreference(this._secureStorage);

  final String _tokenKey = "token";
  final String _tokenUserKey = "tokenUserKey";
  final String _guestKey = "guest";
  final String _userKey = "user";
  final String _favouritesKey = "favourites";
  final String _furnitureFavouritesKey = "furnitureFavourites";
  final String _basketsKey = "baskets";
  final String _ordersKey = "orders";
  final String _userIdKey = "user_id_to_restore_password";

  // Guest Token
  Future<void> saveGuestToken(String value) async {
    try {
      await _secureStorage.write(key: _guestKey, value: value);
    } catch (e) {
      print("Error saving guest token: $e");
    }
  }

  Future<String?> getGuestToken() async {
    try {
      return await _secureStorage.read(key: _guestKey);
    } catch (e) {
      print("Error reading guest token: $e");
      return null;
    }
  }

  Future<void> clearGuest() async {
    try {
      await _secureStorage.delete(key: _guestKey);
    } catch (e) {
      print("Error clearing guest token: $e");
    }
  }

  Future<void> saveUserToken(String value) async {
    try {
      await _secureStorage.write(key: _tokenUserKey, value: value);
    } catch (e) {
      print("Error saving user token: $e");
    }
  }

  Future<String?> getUserToken() async {
    try {
      return await _secureStorage.read(key: _tokenUserKey);
    } catch (e) {
      print("Error reading user token: $e");
      return null;
    }
  }

  Future<void> clearUserToken() async {
    try {
      await _secureStorage.delete(key: _tokenUserKey);
    } catch (e) {
      print("Error clearing user token: $e");
    }
  }

  // User Data
  Future<void> saveUser(Map<String, dynamic> json) async {
    try {
      String user = jsonEncode(json);
      await _secureStorage.write(key: _userKey, value: user);
    } catch (e) {
      print("Error saving user data: $e");
    }
  }

  Future<AuthResponse?> getUser() async {
    try {
      String? userString = await _secureStorage.read(key: _userKey);
      if (userString != null) {
        Map<String, dynamic> json = jsonDecode(userString);
        return AuthResponse.fromJson(json);
      }
    } catch (e) {
      print("Error decoding user data: $e");
    }
    return null;
  }

  Future<void> clearUser() async {
    try {
      await _secureStorage.delete(key: _userKey);
    } catch (e) {
      print("Error clearing user data: $e");
    }
  }

  // Favourites
  Future<List<String>?> getFavourites() async {
    try {
      String? favouritesString = await _secureStorage.read(key: _favouritesKey);
      if (favouritesString != null) {
        return List<String>.from(jsonDecode(favouritesString));
      }
    } catch (e) {
      print("Error decoding favourites: $e");
    }
    return null;
  }

  Future<void> setFavourites({required List<String> values}) async {
    try {
      await _secureStorage.write(key: _favouritesKey, value: jsonEncode(values));
    } catch (e) {
      print("Error saving favourites: $e");
    }
  }

  Future<void> clearFavourites() async {
    try {
      await _secureStorage.delete(key: _favouritesKey);
    } catch (e) {
      print("Error clearing favourites: $e");
    }
  }

  // Baskets
  Future<void> setBaskets(String value) async {
    try {
      await _secureStorage.write(key: _basketsKey, value: value);
    } catch (e) {
      print("Error saving baskets: $e");
    }
  }

  Future<String?> getBaskets() async {
    try {
      return await _secureStorage.read(key: _basketsKey);
    } catch (e) {
      print("Error reading baskets: $e");
      return null;
    }
  }

  // Orders
  Future<void> setMyOrder(String value) async {
    try {
      await _secureStorage.write(key: _ordersKey, value: value);
    } catch (e) {
      print("Error saving order: $e");
    }
  }

  Future<String?> getMyOrder() async {
    try {
      return await _secureStorage.read(key: _ordersKey);
    } catch (e) {
      print("Error reading order: $e");
      return null;
    }
  }

  // Token
  Future<void> saveToken(String token) async {
    try {
      await _secureStorage.write(key: _tokenKey, value: token);
    } catch (e) {
      print("Error saving token: $e");
    }
  }

  Future<String?> getToken() async {
    try {
      return await _secureStorage.read(key: _tokenKey);
    } catch (e) {
      print("Error reading token: $e");
      return null;
    }
  }

  Future<void> clearToken() async {
    try {
      await _secureStorage.delete(key: _tokenKey);
    } catch (e) {
      print("Error clearing token: $e");
    }
  }

  // User ID for password reset
  Future<void> saveUserId(String? userId) async {
    try {
      await _secureStorage.write(key: _userIdKey, value: userId);
    } catch (e) {
      print("Error saving user ID: $e");
    }
  }

  Future<String?> getUserId() async {
    try {
      return await _secureStorage.read(key: _userIdKey);
    } catch (e) {
      print("Error reading user ID: $e");
      return null;
    }
  }

  Future<void> clearUserId() async {
    try {
      await _secureStorage.delete(key: _userIdKey);
    } catch (e) {
      print("Error clearing user ID: $e");
    }
  }
}
