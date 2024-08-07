import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:karmango/core/constants/logger_service.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/data/api/api.dart';
import 'package:karmango/domain/model/favourite/favourite.dart';
import 'package:karmango/domain/model/mobile/basket/basket_products.dart';
import 'package:karmango/domain/model/mobile/cart_product/cart_product.dart';
import 'package:karmango/domain/model/mobile/category/category.dart';
import 'package:karmango/domain/model/mobile/home/home.dart';
import 'package:karmango/domain/model/mobile/product/product.dart';

@Injectable()
class DataRepository {
  final Api api;
  final LoggingService log = LoggingService();

  DataRepository(this.api);
  // Home
  Future getHomeProducts() async {
    final response = await api.getWithToken(path: "/HomePage/");
    var data = jsonDecode(response.body);
    return MobileHomeProducts.fromJson(data);
  }

  Future<ProductDataModel> getProduct(int id) async {
    final response = await api.getWithToken(path: Urls.product(id));
    final data = jsonDecode(response.body);
    return ProductDataModel.fromJson(data);
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

  // Category
  Future<List<CategoryModel>> getCategories() async {
    final response = await api.getWithToken(path: Urls.categories);
    var data = jsonDecode(response.body) as List;
    return data.map((json) => CategoryModel.fromJson(json)).toList();
  }

  Future<ProductModel> getCategoryProducts(int id) async {
    final response = await api.getWithToken(path: Urls.productsByCategory(id));
    var data = jsonDecode(response.body);
    print(response.body);
    return ProductModel.fromJson(data);
  }

  /// Favorites
  Future<Favourite> getFavorites() async {
    final response = await api.getWithToken(path: Urls.favorite);
    var data = jsonDecode(response.body);
    return Favourite.fromJson(data);
  }

  // Future<Favourite> createFavorite(int productId) async {
  //   try {
  //     final response = await api.postWithToken(
  //       path: '/favorite/create',
  //       body: {'product_id': productId},
  //     );

  //     if (response.statusCode == 200) {
  //       // Javobni dekodlash
  //       final data = jsonDecode(response.body);
  //       // `Favourite` ob'ektini yaratish
  //       return Favourite.fromJson(data);
  //     } else {
  //       // Xatolikni qayd etish
  //       print('Failed to create favorite: ${response.body}');
  //       throw Exception('Failed to create favorite: ${response.body}');
  //     }
  //   } catch (e) {
  //     print('Error creating favorite: $e');
  //     rethrow;
  //   }
  // }

  Future<Favourite> createFavorite({required int product_id}) async {
    final body = {
      "product_id": product_id,
    };
    final response =
        await api.post(path: "/favorite/delete/$product_id", body: body);
    var data = jsonDecode(response.body);
    print("ADDEEEEEEED FAVORIT ${response.body}");
    return data["status"];
  }

  Future<bool> deleteFavorite({required int productId}) async {
    final response =
        await api.deleteWithToken(path: Urls.deleteFavorite(productId));
    return response.statusCode ==
        200; // Return true if the deletion was successful
  }

  //Basket
  Future<BasketProducts> getBasketProducts() async {
    try {
      final response = await api.getWithToken(path: "/cart");

      if (response.statusCode == 200) {
        // Javobni dekodlash
        final data = jsonDecode(response.body);
        // `BasketProducts` ob'ektini yaratish
        return BasketProducts.fromJson(data);
      } else {
        // Xatolikni qayd etish
        print('Failed to fetch basket products: ${response.body}');
        throw Exception('Failed to fetch basket products: ${response.body}');
      }
    } catch (e) {
      print('Error fetching basket products: $e');
      rethrow;
    }
  }

  Future<BasketProducts> createBasket({
    required int productId,
  }) async {
    try {
      final response = await api.postWithToken(
        path: "/cart/store",
        body: {'product_id': productId},
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return BasketProducts.fromJson(data);
      } else {
        throw Exception('Failed to create basket: ${response.body}');
      }
    } catch (e) {
      print('Error creating basket: $e');
      rethrow;
    }
  }

  /// Cart
  getAllCarts() async {
    final response = await api.getWithToken(path: Urls.favorite);
    var data = jsonDecode(response.body);
    return (data["data"] as List)
        .map((e) => MobileProduct.fromJson(e))
        .toList();
  }

  Future<BasketProducts> createCart({
    required int product_id,
    // required int attribute_id,
  }) async {
    // final body = {
    //   "product_id": "$product_id",
    //   // "attribute_id": "$attribute_id",
    // };
    final response = await api.postWithToken(
      path: "/cart/store",
      body: {'product_id': product_id},
    );
    var data = jsonDecode(response.body);
    return BasketProducts.fromJson(data);
  }

  // deleteCart({
  //   required int productId,
  //   required int attributeId,
  // }) async {
  //   final response = await api.deleteWithToken(
  //       path: Urls.deleteCart(productId: productId, attributeId: attributeId));
  //   var data = jsonDecode(response.body);
  //   return data["status"];
  // }

//  Future<List<Search>> searchProducts(String inputText) async {
//   final result = await api.get(
//       api: "${Constants.baseUrl}${Urls.searchByProduct(inputText)}");

//   final SearchProductsData data =
//       SearchProductsData.fromJson(result as Map<String, dynamic>);

//   return data.data;
// }
}
