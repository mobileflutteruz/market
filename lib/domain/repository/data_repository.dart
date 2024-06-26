import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:karmango/core/constants/logger_service.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/data/api/api.dart';
import 'package:karmango/domain/model/mobile/category/category.dart';
import 'package:karmango/domain/model/mobile/home/home.dart';
import 'package:karmango/domain/model/mobile/product/product.dart';

@Injectable()
class DataRepository {
  final Api api;
  final LoggingService log = LoggingService();

  DataRepository(this.api);

  Future<MobileHomeProducts> getHomeProducts() async {
    final response = await api.postWithToken(path: Urls.home);
    final data = jsonDecode(response.body);
    return MobileHomeProducts.fromJson(data);
  }

  Future<List<CategoryModel>> getCategories() async {
  final response = await api.getWithToken(path: Urls.categories);
  var data = jsonDecode(response.body) as List;
  return data.map((json) => CategoryModel.fromJson(json)).toList();
}

  // Future<List<CategoryModel>> getSpecialCategories() async {
  //   final response = await api.get(path: "/category");
  //   final data = jsonDecode(response.body) as List;
  //   return data.map((json) => CategoryModel.fromJson(json)).toList();
  // }

  Future<CategoryModel> getCategoryProduct(int id) async {
    final response = await api.getWithToken(path: Urls.productsByCategory(id));
    final data = jsonDecode(response.body);
    return CategoryModel.fromJson(data);
  }

  Future<ProductDataModel> getProduct(int id) async {
    final response = await api.getWithToken(path: Urls.product(id));
    final data = jsonDecode(response.body);
    return ProductDataModel.fromJson(data);
  }

  Future<List<MobileProduct>> getFavorites() async {
    final response = await api.getWithToken(path: Urls.favorite);
    final data = jsonDecode(response.body);
    return (data["data"] as List).map((e) => MobileProduct.fromJson(e)).toList();
  }

  Future<bool> createFavorite(int productId) async {
    final body = {"product_id": productId};
    final response = await api.postWithToken(path: Urls.createFavorite, body: body);
    final data = jsonDecode(response.body);
    return data["status"];
  }

  Future<bool> deleteFavorite(int productId) async {
    final response = await api.deleteWithToken(path: Urls.deleteFavorite(productId));
    final data = jsonDecode(response.body);
    return data["status"];
  }

  Future<List<MobileProduct>> getAllCarts() async {
    final response = await api.getWithToken(path: Urls.favorite);
    final data = jsonDecode(response.body);
    return (data["data"] as List).map((e) => MobileProduct.fromJson(e)).toList();
  }

  Future<bool> createCart(int productId, int attributeId) async {
    final params = {
      "product_id": "$productId",
      "attribute_id": "$attributeId",
    };
    final response = await api.post(path: Urls.createCart, params: params);
    final data = jsonDecode(response.body);
    return data["status"];
  }

  Future<bool> deleteCart(int productId, int attributeId) async {
    final response = await api.deleteWithToken(
      path: Urls.deleteCart(productId: productId, attributeId: attributeId),
    );
    final data = jsonDecode(response.body);
    return data["status"];
  }
}
