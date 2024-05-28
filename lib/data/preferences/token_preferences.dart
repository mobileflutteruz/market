import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/model/user/user_model.dart';

@Injectable()
class TokenPreference {
  final SharedPreferences localeDb;

  TokenPreference(this.localeDb);

  final String _key = "token";
  final String _favourites = "favourites";
  final String _furnitureFavourites = "furnitureFavourites";
  final String _baskets = "baskets";
  final String _guest = "guest";
  final String _user = "user";
  final String _mobileInitScreen = "mobileInitScreen";
  final String _furnitureInitScreen = "furnitureInitScreen";

  Future<bool> setGuestUser(String value) async {
    final result = await localeDb.setString(_guest, value);
    return result;
  }

  getGuestUser() async {
    return localeDb.getString(_guest);
  }

  setUser(Map<String, dynamic> json) async {
    String user = jsonEncode(UserModel.fromJson(json));
    localeDb.setString(_user, user);
  }

  getUser() async {
    Map<String, dynamic> json =
    jsonDecode(localeDb.getString(_user)!);
    var user = UserModel.fromJson(json);

    return user;
  }

  set(String value) async {
    await localeDb.setString(_key, value);
  }

  get() async {
    return localeDb.getString(_key);
  }


  /// Mobile Shop Product Favourites
  getFavourites() async {
    return localeDb.getStringList(_favourites);
  }

  setFavourites({required List<String> values}) async {
    await localeDb.setStringList(_favourites, values);
  }

  clearFavourites() async {
    await localeDb.remove(_favourites);
  }

  /// Furniture Shop Product Favourites
  getFurnitureFavourites() async {
    return localeDb.getStringList(_furnitureFavourites);
  }

  setFurnitureFavourites({required List<String> values}) async {
    await localeDb.setStringList(_furnitureFavourites, values);
  }

  clearFurnitureFavourites() async {
    await localeDb.remove(_furnitureFavourites);
  }





  setBaskets({required String value}) async {
    await localeDb.setString(_baskets, value);
  }

  getBaskets() async {
    return localeDb.getString(_baskets);
  }

  setMyOrder({required String value}) async {
    await localeDb.setString(_baskets, value);
  }

  getMyOrder() async {
    return localeDb.getString(_baskets);
  }

  clear() async {
    await localeDb.remove(_key);
  }

  clearUser() async {
    await localeDb.remove(_user);
  }

  setMobileInitScreen(bool value) async {
    await localeDb.setBool(_mobileInitScreen, value);
  }

  getMobileInitScreen() async {
    return localeDb.getBool(_mobileInitScreen);
  }

  setFurnitureInitScreen(bool value) async {
    await localeDb.setBool(_furnitureInitScreen, value);
  }

  getFurnitureInitScreen() async {
    return localeDb.getBool(_furnitureInitScreen);
  }
}
