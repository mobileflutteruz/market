import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/domain/model/auth/auth_resposne/auth_response.dart';
import 'package:karmango/domain/model/user/user_model.dart';

@Injectable()
class TokenDataSource {
  final FlutterSecureStorage _secureStorage;

  TokenDataSource(this._secureStorage);

  final String _tokenKey = "token";
  final String _favouritesKey = "favourites";
  final String _furnitureFavouritesKey = "furnitureFavourites";
  final String _basketsKey = "baskets";
  final String _ordersKey = "orders";
  final String _guestKey = "guest";
  final String _userKey = "user";

  // Guest foydalanuvchini saqlash
  Future<void> saveGuestUser(String value) async {
    print("Token saqlanmoqda (Guest): $value");
    await _secureStorage.write(key: _guestKey, value: value);
  }

  // Guest foydalanuvchini olish
  Future<String?> getGuestUser() async {
    print("Guest token olinmoqda TOKEEEEEN: $_guestKey");
    return await _secureStorage.read(key: _guestKey);
  }

  // Foydalanuvchi ma'lumotlarini saqlash
  Future<void> setUser(Map<String, dynamic> json) async {
    String user = jsonEncode(json);
    await _secureStorage.write(key: _userKey, value: user);
  }

  // Foydalanuvchi ma'lumotlarini olish
  Future<AuthResponse?> getUser() async {
    String? userString = await _secureStorage.read(key: _userKey);
    if (userString != null) {
      try {
        Map<String, dynamic> json = jsonDecode(userString);
        return AuthResponse.fromJson(json);
      } catch (e) {
        // Handle decoding error (e.g., throw exception or return default AuthResponse)
        print("Error decoding user data: $e");
        return null;
      }
    }
    return null;
  }

  // Foydalanuvchi ma'lumotlarini tozalash
  Future<void> clearUser() async {
    await _secureStorage.delete(key: _userKey);
  }

  // Mobil do'kon uchun yoqtirganlarni olish
  Future<List<String>?> getFavourites() async {
    String? favouritesString = await _secureStorage.read(key: _favouritesKey);
    if (favouritesString != null) {
      return List<String>.from(jsonDecode(favouritesString));
    }
    return null;
  }

  // Mobil do'kon uchun yoqtirganlarni saqlash
  Future<void> setFavourites({required List<String> values}) async {
    await _secureStorage.write(key: _favouritesKey, value: jsonEncode(values));
  }

  // Mobil do'kon uchun yoqtirganlarni tozalash
  Future<void> clearFavourites() async {
    await _secureStorage.delete(key: _favouritesKey);
  }

  // Mebel do'koni uchun yoqtirganlarni olish
  Future<List<String>?> getFurnitureFavourites() async {
    String? favouritesString =
        await _secureStorage.read(key: _furnitureFavouritesKey);
    if (favouritesString != null) {
      return List<String>.from(jsonDecode(favouritesString));
    }
    return null;
  }

  // Mebel do'koni uchun yoqtirganlarni saqlash
  Future<void> setFurnitureFavourites({required List<String> values}) async {
    await _secureStorage.write(
        key: _furnitureFavouritesKey, value: jsonEncode(values));
  }

  // Mebel do'koni uchun yoqtirganlarni tozalash
  Future<void> clearFurnitureFavourites() async {
    await _secureStorage.delete(key: _furnitureFavouritesKey);
  }

  // Savatchalarni saqlash
  Future<void> setBaskets({required String value}) async {
    await _secureStorage.write(key: _basketsKey, value: value);
  }

  // Savatchalarni olish
  Future<String?> getBaskets() async {
    return await _secureStorage.read(key: _basketsKey);
  }

  // Buyurtmani saqlash
  Future<void> setMyOrder({required String value}) async {
    await _secureStorage.write(
        key: _ordersKey, value: value); // Use _ordersKey instead of _basketsKey
  }

  // Buyurtmani olish
  Future<String?> getMyOrder() async {
    return await _secureStorage.read(
        key: _ordersKey); // Use _ordersKey instead of _basketsKey
  }

  // Tokenni saqlash
  Future<void> saveToken(String token) async {
    await _secureStorage.write(key: _tokenKey, value: token);
  }

  // Tokenni olish
  Future<String?> getToken() async {
    return await _secureStorage.read(key: _tokenKey);
  }

  // Tokenni tozalash
  Future<void> clearToken() async {
    await _secureStorage.delete(key: _tokenKey);
  }
}
