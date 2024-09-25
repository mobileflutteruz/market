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
          return true;
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
Future<List<BasketProducts>> getBasketProducts() async {
  try {
    final response = await api.getWithToken(path: "/cart");

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      // Debug: print the data structure to understand the response format
      print('Response body data: $data');

      // Check if the data is a list or a single object and handle accordingly
      if (data is List) {
        // Parse the list of BasketProducts
        return data.map<BasketProducts>((item) => BasketProducts.fromJson(item)).toList();
      } else if (data is Map<String, dynamic>) {
        // Handle the case where a single object is returned and wrap it in a list
        return [BasketProducts.fromJson(data)];
      } else {
        throw Exception('Unexpected data format: Expected a list or an object');
      }
    } else {
      print('Failed to fetch basket products: ${response.body}');
      throw Exception('Failed to fetch basket products: ${response.body}');
    }
  } catch (e) {
    print('Error fetching basket products: $e');
    rethrow;
  }
}






 Future<bool> createBasket({required int productId}) async {
  try {
    final response = await api.postWithToken(
      path: "/cart/store",
      body: {'product_id': productId},
    );

    print('Response status code: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print('Response data: $data');

      // Consider any 200 status code as success
      return true;
    } else {
      print('Failed to create basket: ${response.body}');
      return false;
    }
  } catch (e) {
    print('Error creating basket: $e');
    return false;
  }
}

  // /// Cart
  // getAllCarts() async {
  //   final response = await api.getWithToken(path: "/cart");
  //   // Ensure the response body is not null
  //   if (response.body != null) {
  //     var data = jsonDecode(response.body);
  //     // Check if 'data' is not null and is a list
  //     if (data != null && data["data"] != null && data["data"] is List) {
  //       return (data["data"] as List)
  //           .map((e) => BasketProducts.fromJson(e) )
  //           .toList();
  //     } else {
  //       // If the 'data' key is null or not a list, return an empty list
  //       return [];
  //     }
  //   } else {

  //     throw Exception('Response body is null');
  //   }
  // }

  // Future<List<BasketProducts>> getAllCarts() async {
  //   final response = await api.getWithToken(path: "/cart");
  //   var data = jsonDecode(response.body) as List;
  //   return data.map((json) => BasketProducts.fromJson(json)).toList();
  // }

  //? Create Cart
  Future<BasketProducts> createCart({
    required int product_id,
  }) async {
    final response = await api.post(
      path: "/cart/store",
      body: {'product_id': product_id},
    );
    var data = jsonDecode(response.body);
    final products = data['products'] as List<
        dynamic>; // Assuming 'products' is the key for the list of products
    return BasketProducts.fromJson(products as Map<String, dynamic>);
  }

  Future<bool> deleteCartById({required int productId}) async {
    try {
      final response = await api.deleteWithToken(
          path: "/cart/delete/$productId"); // Replace with correct endpoint

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        if (data["status"]) {
          return true; // Successful deletion
        } else {
          throw ApiException("Failed to remove from cart: ${data["message"]}");
        }
      } else {
        throw ApiException(
            "Failed to remove from cart: HTTP status ${response.statusCode}");
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
