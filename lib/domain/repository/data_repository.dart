import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:karmango/core/constants/logger_service.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/data/api/api.dart';
import 'package:karmango/data/api/main_api.dart';
import 'package:karmango/domain/model/favourite/favourite.dart';
import 'package:karmango/domain/model/mobile/basket/basket_products.dart';
import 'package:karmango/domain/model/mobile/cart_product/cart_product.dart';
import 'package:karmango/domain/model/mobile/category/category.dart';
import 'package:karmango/domain/model/mobile/home/home.dart';
import 'package:karmango/domain/model/mobile/product/product.dart';

@Injectable()
class DataRepository {
  final Api api;
  final MainApi mainApi;
  final LoggingService log = LoggingService();
  LoggingService logg = LoggingService();
  DataRepository(this.api, this.mainApi);
  // Home

  Future getHomeProducts() async {
    final response = await api.getWithToken(path: "/HomePage");
    var data = jsonDecode(response.body);
    return MobileHomeProducts.fromJson(data);
  }

  Future<ProductDataModel> getProduct(int id) async {
    final response = await api.getWithToken(path: Urls.product(id));
    final data = jsonDecode(response.body);
    return ProductDataModel.fromJson(data);
  }

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

  // Category
  Future<Favourite> getFavorites() async {
    final response = await api.getWithToken(path: Urls.favorite);
    var data = jsonDecode(response.body);
    return Favourite.fromJson(data);
  }

  Future<Favourite> createFavorite({required int product_id}) async {
    final body = {
      "product_id": product_id,
    };

    try {
      final response =
          await api.postWithToken(path: "/favorite/create", body: body);

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);

        // Assuming you have a Favourite model and a fromJson method
        if (data["status"]) {
          return Favourite.fromJson(data);
        } else {
          throw Exception("Failed to add to favorites: ${data["message"]}");
        }
      } else {
        throw Exception(
            "Failed to add to favorites with status code: ${response.statusCode}");
      }
    } catch (error) {
      print("Error in adding to favorites: $error");
      rethrow;
    }
  }

  Future<bool> deleteFavorite({required int productId}) async {
    try {
      final response =
          await api.deleteWithToken(path: "favorite/delete/$productId");

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);

        if (data["status"]) {
          return true; // muvaffaqiyatli holat
        } else {
          throw Exception(
              "Failed to remove from favorites: ${data["message"]}");
        }
      } else {
        throw Exception(
            "Failed to remove from favorites with status code: ${response.statusCode}");
      }
    } catch (error) {
      print("Error in removing from favorites: $error");
      rethrow;
    }
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

  //? Create Cart
  Future<BasketProducts> createCart({
    required int product_id,
  }) async {
    final response = await api.postWithToken(
      path: "/cart/store",
      body: {'product_id': product_id},
    );
    var data = jsonDecode(response.body);
    return BasketProducts.fromJson(data);
  }

 Future<bool> deleteCartById({required int productId}) async {
  try {
    final response = await api.deleteWithToken(path: "/cart/delete/$productId"); // Replace with correct endpoint

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      if (data["status"]) {
        return true; // Successful deletion
      } else {
        throw ApiException("Failed to remove from cart: ${data["message"]}");
      }
    } else {
      throw ApiException("Failed to remove from cart: HTTP status ${response.statusCode}");
    }
  } catch (e) {
    if (e is ApiException) {
      // Handle specific API exceptions
      print("API Error: ${e.message}");
    } else {
      // Handle other exceptions
      print("Error deleting cart item: $e");
    }
    rethrow;
  }

//  Future<List<Search>> searchProducts(String inputText) async {
//   final result = await api.get(
//       api: "${Constants.baseUrl}${Urls.searchByProduct(inputText)}");

//   final SearchProductsData data =
//       SearchProductsData.fromJson(result as Map<String, dynamic>);

//   return data.data;
// }
}

}

class ApiException implements Exception {
  final String message;

  ApiException(this.message);
}