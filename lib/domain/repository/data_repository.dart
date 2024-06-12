import 'dart:convert';
import 'package:injectable/injectable.dart';
import '../../core/constants/constants.dart';
import '../../data/api/api.dart';
import '../model/mobile/category/category.dart';
import '../model/mobile/home/home.dart';
import '../model/mobile/product/product.dart';

@Injectable()
class DataRepository {
  final Api api;

  DataRepository(this.api);

  Future getHomeProducts() async {
    final response = await api.getWithToken(path: Urls.home);
    var data = jsonDecode(response.body);
    return MobileHomeProducts.fromJson(data);
  }


  Future getCategories() async {
    final response = await api.getWithToken(path: Urls.categories);
    var data = jsonDecode(response.body);
    return  CategoryModel.fromJson(data);
  }

 Future getCategoryProduct(int id) async {
    final response = await api.getWithToken(path: Urls.productsByCategory(id));
    var data = jsonDecode(response.body);
    return  CategoryModel .fromJson(data);
  }





  /// Product
   Future getProduct(int id) async {
    final response = await api.getWithToken(path: Urls.product(id));
    var data = jsonDecode(response.body);

    return
      ProductDataModel.fromJson(data);
  }
    
  /// Favorites
  Future<List<MobileProduct>?> getFavorites() async {
    final response = await api.getWithToken(path: Urls.favorite);
    var data = jsonDecode(response.body);
    return (data["data"] as List)
        .map((e) => MobileProduct.fromJson(e))
        .toList();
  }

  Future<bool?> createFavorite({required int productId}) async {
    final body = {
      "product_id": productId,
    };
    final response =
        await api.postWithToken(path: Urls.createFavorite, body: body);
    var data = jsonDecode(response.body);
    return data["status"];
  }

  Future<bool?> deleteFavorite({required int productId}) async {
    final response =
        await api.deleteWithToken(path: Urls.deleteFavorite(productId));
    var data = jsonDecode(response.body);
    return data["status"];
  }

  /// Cart
  getAllCarts() async {
    final response = await api.getWithToken(path: Urls.favorite);
    var data = jsonDecode(response.body);
    return (data["data"] as List)
        .map((e) => MobileProduct.fromJson(e))
        .toList();
  }
  createCart({
    required int productId,
    required int attributeId,
  }) async {
    final params = {
      "product_id": "$productId",
      "attribute_id": "$attributeId",
    };
    final response = await api.post(path: Urls.createCart, params: params);
    var data = jsonDecode(response.body);
    return data["status"];
  }

  deleteCart({
    required int productId,
    required int attributeId,
  }) async {
    final response = await api.deleteWithToken(
        path: Urls.deleteCart(productId: productId, attributeId: attributeId));
    var data = jsonDecode(response.body);
    return data["status"];
  }


}
