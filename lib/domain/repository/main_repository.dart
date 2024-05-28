import 'dart:convert';
import 'package:injectable/injectable.dart';
import '../../data/preferences/token_preferences.dart';

@Injectable()
class MainRepository {
  final TokenPreference _preference;
  MainRepository(this._preference);

  /// Mobile Shop
  getLikeIds() async {
    return await _preference.getFavourites();
  }

  setLikeIds(List<String> likeIds) async {
    await _preference.setFavourites(values: likeIds);
  }

  getCategory()async{
    
  }

  /// Furniture Shop
  getFurnitureLikeIds() async {
    return await _preference.getFurnitureFavourites();
  }

  setFurnitureLikeIds(List<String> likeIds) async {
    await _preference.setFurnitureFavourites(values: likeIds);
  }

  Future<Map<int, int>> getBasketIds() async {
    final String? jsonString = await _preference.getBaskets();
    Map<int, int> myMap = {};

    if (jsonString != null) {
      myMap = (json.decode(jsonString) as Map<String, dynamic>).map(
            (key, value) => MapEntry(int.parse(key), value as int),
      );
    }

    return myMap;
  }

  setBasketIds(Map<int, int> basketIds) async {
    final String jsonString = json.encode(basketIds.map(
          (key, value) => MapEntry(key.toString(), value),
    ));
    await _preference.setBaskets(value: jsonString);
  }

  Future<Map<int, int>> getMyOrderIds() async {
    final String? jsonString = await _preference.getMyOrder();
    Map<int, int> myMap = {};

    if (jsonString != null) {
      myMap = (json.decode(jsonString) as Map<String, dynamic>).map(
            (key, value) => MapEntry(int.parse(key), value as int),
      );
    }

    return myMap;
  }

  setMyOrderIds(Map<int, int> basketIds) async {
    final String jsonString = json.encode(basketIds.map(
          (key, value) => MapEntry(key.toString(), value),
    ));
    await _preference.setMyOrder(value: jsonString);
  }
}
