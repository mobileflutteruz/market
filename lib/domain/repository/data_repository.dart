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
import 'package:karmango/domain/model/mobile/profile/profile_edit/profile_edit_model.dart';
import 'package:karmango/domain/model/mobile/profile/profile_model.dart';

@Injectable()
class DataRepository {
  final Api api;
  final MainApi mainApi;
  final LoggingService log = LoggingService();
  LoggingService logg = LoggingService();

  DataRepository(this.api, this.mainApi);

  //

  Future<MobileHomeProducts> getHomeProducts() async {
    try {
      final response = await api.getWithToken(path: "/HomePage");
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        // log.logInfo("HOMEEEEEEEEEEEEE: ${data}");
        return MobileHomeProducts.fromJson(data);
      } else {
        log.logWarning(
            "Failed to fetch homepage products: ${response.statusCode}");
        throw Exception("Failed to load homepage products");
      }
    } catch (e) {
      log.logError("Error fetching homepage products: $e");
      rethrow; // Shu yerda xatolikni tashqariga chiqaramiz
    }
  }

  // Future getHomeProducts() async {
  //   final response = await api.getWithToken(path: "/HomePage");
  //   var data = jsonDecode(response.body);
  //   log.logInfo("HOMEEEEEEEEEEEEE: ${data}");
  //   return MobileHomeProducts.fromJson(data);
  // }

  Future<ProductDataModel> getProduct(int id) async {
    final response = await api.getWithToken(path: Urls.product(id));
    final data = jsonDecode(response.body);
    // log.logInfo("Product: ${data}");
    return ProductDataModel.fromJson(data);
  }

//   Future<ProfileModel> getProfile() async {
//   final response = await api.getWithToken(path: "/user/info");
//   final data = jsonDecode(response.body);

//   final profile = ProfileModel.fromJson(data);
//   // print("Profileeeeeeeeeeeeeeeeeeeeeeeeeee: ${profile.result.}, ${profile.result.phone}");

//   return profile;
// }

  Future<UserResponse> getProfile() async {
    try {
      final response = await api.getWithToken(path: "/user/info");
      print('API Response: ${response.body}');

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print('Decoded JSON: $data');
        return UserResponse.fromJson(data);
        // return true;
      } else {
        throw Exception("Failed to fetch profile: ${response.statusCode}");
      }
    } catch (e) {
      print("Error fetching profile: $e");
      rethrow;
    }
  }

  Future<ProfileEditModel> profileEdit({
    required String surname,
    required String name,
    required String phone,
  }) async {
    final body = {
      "surname": surname,
      "name": name,
      "phone": phone,
    };

    final response =
        await api.postWithToken(path: "/change-personal-info", body: body);

    final responseBody = jsonDecode(response.body);

    final profileEditResponse = ProfileEditModel.fromJson(responseBody);

    if (profileEditResponse.status) {
      log.logInfo('Request successful: ${profileEditResponse.message}');
    } else {
      log.logError('Request failed: ${profileEditResponse.message}');
    }

    return profileEditResponse;
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
    // print(response.body);
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
  Future<CartResponse> getBasketProducts() async {
    try {
      final response = await api.getWithToken(path: "/cart");
      final data = jsonDecode(response.body);
      return CartResponse.fromJson(data);
    } catch (e) {
      print('Error fetching basket products: $e');
      rethrow;
    }
  }

  //Todo ishlavotdi shu
  Future<bool> createBasket({required int product_id}) async {
    try {
      final response = await api.post(
        path: "/cart/store",
        body: {'product_id': product_id},
      );
      print('Response status code: ${response.statusCode}');
      print('Response body: ${response.body}');
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        // print('Response data: $data');
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

  Future<bool> deleteBasketById(int productId) async {
    try {
      final response =
          await api.deleteWithToken(path: "cart/delete/$productId");

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

  Future<bool> deleteAllBasket(List prod_id) async {
    try {
      final response = await api.deleteWithToken(
        path: "del-sel-prod-user-cart",
        body: {'prod_id': prod_id},
      );

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

  //? Create Cart
  Future<CartResponse> createCart({
    required int product_id,
  }) async {
    final response = await api.post(
      path: "/cart/store",
      body: {'product_id': product_id},
    );
    var data = jsonDecode(response.body);
    final products = data['products'] as List<
        dynamic>; // Assuming 'products' is the key for the list of products
    return CartResponse.fromJson(products as Map<String, dynamic>);
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
