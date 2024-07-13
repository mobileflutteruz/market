import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:karmango/core/constants/logger_service.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/data/api/api.dart';
import 'package:karmango/domain/model/favourite/favourite.dart';
import 'package:karmango/domain/model/mobile/cart_product/cart_product.dart';
import 'package:karmango/domain/model/mobile/category/category.dart';
import 'package:karmango/domain/model/mobile/home/home.dart';
import 'package:karmango/domain/model/mobile/product/product.dart';

@Injectable()
class DataRepository {
  final Api api;
  final LoggingService log = LoggingService();

  DataRepository(this.api);

  Future getHomeProducts() async {
    final response = await api.getWithToken(path: Urls.home);
    var data = jsonDecode(response.body);
    return MobileHomeProducts.fromJson(data);
  }

//  Future getCategories() async {
//     final response = await api.getWithToken(path: Urls.categories);
//     var data = jsonDecode(response.body);
//     return  CategoryModel.fromJson(data);
//   }

//   Future getCategoryProducts(int id) async{
//      final response = await api.getWithToken(path: Urls.productsByCategory(id));
//     var data = jsonDecode(response.body);
//     return  ProductModel.fromJson(data);
//   }

  Future<List<CategoryModel>> getCategories() async {
    final response = await api.getWithToken(path: Urls.categories);
    var data = jsonDecode(response.body) as List;
    return data.map((json) => CategoryModel.fromJson(json)).toList();
  }

  Future<ProductModel> getCategoryProducts(int id) async {
    final response = await api.getWithToken(path: Urls.productsByCategory(id));
    var data = jsonDecode(response.body);
    return ProductModel.fromJson(data);
  }

  Future<ProductDataModel> getProduct(int id) async {
    final response = await api.getWithToken(path: Urls.product(id));
    final data = jsonDecode(response.body);
    return ProductDataModel.fromJson(data);
  }

  /// Favorites
  Future<Favourite> getFavorites() async {
    final response = await api.getWithToken(path: Urls.favorite);
    var data = jsonDecode(response.body);
    return Favourite.fromJson(data);
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

  Future<void> deleteFavorite({required int productId}) async {
    await api.deleteWithToken(path: Urls.deleteFavorite(productId));
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

//  Future<List<Sea>> searchProducts(String inputText) async {
//   final result = await api.get(
//       api: "${Constants.baseUrl}${Urls.searchByProduct(inputText)}");

//   final SearchProductsData data =
//       SearchProductsData.fromJson(result as Map<String, dynamic>);

//   return data.data;
// }
}
