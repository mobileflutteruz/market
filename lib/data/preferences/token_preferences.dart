import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:karmango/domain/model/auth/auth_resposne/auth_response.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../domain/model/user/user_model.dart';

@Injectable()
class TokenPreference {
  final SharedPreferences localeDb;

  TokenPreference(this.localeDb);

  final String _favourites = "favourites";
  final String _furnitureFavourites = "furnitureFavourites";
  final String _baskets = "baskets";
  final String _guest = "guest";
  final String _user = "user";
  final String _userIdKey = "user_id_to_restore_password";

  Future<void> setUserId(String userId) async {
    await localeDb.setString(_userIdKey, userId);
  }

  Future<String?> getUserId() async {
    return localeDb.getString(_userIdKey);
  }

  Future<void> saveGuestUser(String value) async {
    print("TOKEEEEEEEEEEEEEN saveGuestUser : ${value}");

    await localeDb.setString(_guest, value);
  }

  Future<String?> getGuestUser() async {
    print("TOKEEEEEEEEEEEEEN getGuestUser : ${_guest}");
    return localeDb.getString(_guest);
  }

  Future<void> setUser(Map<String, dynamic> json) async {
    
    String user = jsonEncode(UserModel.fromJson(json));
      print("TOKEEEEEEEEEEEEEN getGuestUser : ${user}");
    await localeDb.setString(_user, user);
  }

  Future<AuthResponse?> getUser() async {
    String? userString = localeDb.getString(_user);
    if (userString != null) {
      Map<String, dynamic> json = jsonDecode(userString);
      return AuthResponse.fromJson(json);
    }
    return null;
  }

  /// Mobile Shop Product Favourites
  Future<List<String>?> getFavourites() async {
    return localeDb.getStringList(_favourites);
  }

  Future<void> setFavourites({required List<String> values}) async {
    await localeDb.setStringList(_favourites, values);
  }

  Future<void> clearFavourites() async {
    await localeDb.remove(_favourites);
  }

  /// Furniture Shop Product Favourites
  Future<List<String>?> getFurnitureFavourites() async {
    return localeDb.getStringList(_furnitureFavourites);
  }

  Future<void> setFurnitureFavourites({required List<String> values}) async {
    await localeDb.setStringList(_furnitureFavourites, values);
  }

  Future<void> clearFurnitureFavourites() async {
    await localeDb.remove(_furnitureFavourites);
  }

  Future<void> setBaskets({required String value}) async {
    await localeDb.setString(_baskets, value);
  }

  Future<String?> getBaskets() async {
    return localeDb.getString(_baskets);
  }

  Future<void> setMyOrder({required String value}) async {
    await localeDb.setString(_baskets, value);
  }

  Future<String?> getMyOrder() async {
    return localeDb.getString(_baskets);
  }


  Future<void> saveUserId(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    
    // Log qo'shish orqali ID ni saqlayotganini tekshiring
    print("Saqlanayotgan User ID: $userId");
    
    final result = await prefs.setString('user_id_to_restore_password', userId);
    
    // ID muvaffaqiyatli saqlandi yoki yo'qligini tekshirish
    if (result) {
      print("User ID muvaffaqiyatli saqlandi.");
    } else {
      print("User ID saqlashda xatolik yuz berdi.");
    }
  }

  // Qayta olish uchun metod ham qo'shishingiz mumkin:
  Future<String?> getUserSmsId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('user_id_to_restore_password');
  }
}
