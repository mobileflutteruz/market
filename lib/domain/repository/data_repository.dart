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
import 'package:karmango/domain/model/mobile/search/search.dart';
import 'package:karmango/domain/model/search/search_product.dart';

@Injectable()
class DataRepository {
  final Api api;
  final LoggingService log = LoggingService();

  DataRepository(this.api);

  // Home
  Future<MobileHomeProducts> getHomeProducts() async {
    final response = await api.getWithToken(path: "/HomePage/");
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
    return ProductModel.fromJson(data);
  }

  // Favorites
  Future<Favourite> getFavorites() async {
    final response = await api.getWithToken(path: Urls.favorite);
    var data = jsonDecode(response.body);
    return Favourite.fromJson(data);
  }

  Future<Favourite> createFavorite(int productId) async {
    try {
      final response = await api.postWithToken(
        path: '/favorite/create',
        body: {'product_id': productId},
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return Favourite.fromJson(data);
      } else {
        log.logError('Failed to create favorite: ${response.body}');
        throw Exception('Failed to create favorite: ${response.body}');
      }
    } catch (e) {
      log.logError('Error creating favorite: $e');
      rethrow;
    }
  }

  Future<bool> deleteFavorite({required int productId}) async {
    final response =
        await api.deleteWithToken(path: Urls.deleteFavorite(productId));
    return response.statusCode == 200;
  }

  // Basket
  Future<BasketProducts> getBasketProducts() async {
    try {
      final response = await api.getWithToken(path: "/cart");

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return BasketProducts.fromJson(data);
      } else {
        log.logError('Failed to fetch basket products: ${response.body}');
        throw Exception('Failed to fetch basket products: ${response.body}');
      }
    } catch (e) {
      log.logError('Error fetching basket products: $e');
      rethrow;
    }
  }

  Future<BasketProducts> createBasket({required int productId}) async {
    try {
      final response = await api.postWithToken(
        path: "/cart/store",
        body: {'product_id': productId},
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return BasketProducts.fromJson(data);
      } else {
        log.logError('Failed to create basket: ${response.body}');
        throw Exception('Failed to create basket: ${response.body}');
      }
    } catch (e) {
      log.logError('Error creating basket: $e');
      rethrow;
    }
  }

  // Cart
  Future<List<BasketProducts>> getAllCarts() async {
    final response = await api.getWithToken(path: Urls.favorite);
    var data = jsonDecode(response.body);
    return (data["data"] as List)
        .map((e) => BasketProducts.fromJson(e))
        .toList();
  }

  Future<BasketProducts> createCart({required int productId}) async {
    final response = await api.postWithToken(
      path: "/cart/store",
      body: {'product_id': productId},
    );
    var data = jsonDecode(response.body);
    return BasketProducts.fromJson(data);
  }

  Future<List<SearchProduct>> searchProducts(String inputText) async {
    final result = await api.get(
      path: "${Constants.baseUrl}${Urls.searchByProduct(inputText)}",
    );

    final SearchProductsData data =
        SearchProductsData.fromJson(result as Map<String, dynamic>);

    return data.data;
  }


  
}
