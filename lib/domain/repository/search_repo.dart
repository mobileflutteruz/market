import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:karmango/core/constants/logger_service.dart';
import 'package:karmango/domain/model/search/all_product_deleted/all_product_deleted.dart';
import 'package:karmango/domain/model/search/deletedId/deletedId.dart';
import 'package:karmango/domain/model/search/search_product.dart';
import 'package:karmango/domain/model/search/searched/searched_history.dart';
import '../../data/api/api.dart';

@Injectable()
class SearchRepository {
  SearchRepository(this._api);

  final Api _api;
  final LoggingService log = LoggingService();

  // Future<List<SearchProduct>?> searchProduct({
  //   required String name,
  // }) async {
  //   try {
  //     final encodedName = Uri.encodeComponent(name);
  //     final response = await _api.get(
  //       path: '/search-product?name=$name',

  //     );

  //     if (response.statusCode == 200) {
  //       final result = jsonDecode(response.body);

  //       if (result['result'] is List) {
  //         return (result['result'] as List)
  //             .map((item) => SearchProduct.fromJson(item))
  //             .toList();
  //       } else {
  //         log.logError('Unexpected response format: ${result['result']}');
  //         return null;
  //       }
  //     } else {
  //       log.logError('Failed to load products: ${response.statusCode}');
  //       return null;
  //     }
  //   } catch (e, stackTrace) {
  //     log.logError('An error occurred: $e');
  //     log.logError(stackTrace.toString());
  //     return null;
  //   }
  // }

 Future<List<SearchProduct>> searchProduct({
  required String name,
}) async {
  // Token bilan so'rov qilish
  final response = await _api.getWithToken(
    path: '/search-product?name=$name',
  );

  // Javob status kodi va body ni chiqaramiz
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

  // Javobni JSON formatida dekodlash
  final result = jsonDecode(response.body);

  // JSON ichida 'result' degan kalit borligiga ishonch hosil qilish
  if (result.containsKey('result')) {
    final List<SearchProduct> list = List.from(result['result'])
        .map((el) => SearchProduct.fromJson(el))
        .toList();
    
    return list;
  } else {
    throw Exception('API javobida "result" kaliti topilmadi');
  }
}


  //   Future<List<SearchProduct>> searchProduct({required String name}) async {
  //   try {
  //     // Make the API request
  //     final response = await _api.get(
  //       path: '/search-product?name=$name',
  //     );

  //     // Decode the JSON response
  //     final Map<String, dynamic> result = jsonDecode(response.body);

  //     // Map the JSON to a list of SearchProduct
  //     final List<SearchProduct> products = List.from(result['result'] ?? [])
  //         .map((el) => SearchProduct.fromJson(el))
  //         .toList();

  //     return products;
  //   } catch (error) {
  //     print('Error fetching products: $error');
  //     rethrow; // Propagate the error so it can be handled by the calling function
  //   }
  // }

  // Future<List<SearchProduct>> searchProduct({
  //   required String name,
  // }) async {
  //   try {
  //     // Encode the name parameter to handle special characters
  //     final encodedName = Uri.encodeComponent(name);
  //     final response = await _api.getWithToken(
  //       path: '/search-product?name=${encodedName}',
  //     );

  //     if (response.statusCode == 200) {
  //       final result = jsonDecode(response.body);

  //       if (result['result'] is List) {
  //         // Safely map the JSON list to the SearchProduct model
  //         final List<SearchProduct> list = (result['result'] as List)
  //             .map((el) => SearchProduct.fromJson(el as Map<String, dynamic>))
  //             .toList();

  //         return list;
  //       } else {
  //         // Handle unexpected response structure
  //         throw Exception('Unexpected response format: ${result['result']}');
  //       }
  //     } else {
  //       // Handle non-200 status codes
  //       throw Exception('Failed to load products: ${response.statusCode}');
  //     }
  //   } catch (e) {
  //     // Log the error and rethrow it or return an empty list based on your app's requirements
  //     print('An error occurred: $e');
  //     return []; // or rethrow e; if you want to propagate the error
  //   }
  // }

  Future<SearchedHistory?> searchedHistory() async {
    try {
      final response = await _api.getWithToken(path: "/search");

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        return SearchedHistory.fromJson(data);
      } else {
        log.logError('Failed to load search history: ${response.statusCode}');
        return null;
      }
    } catch (e, stackTrace) {
      log.logError('An error occurred while fetching search history: $e');
      log.logError(stackTrace.toString());
      return null;
    }
  }

  Future<DeletedId?> searchDeletedId({
    required int index,
  }) async {
    try {
      final response = await _api.deleteWithToken(
        path: '/search/delete/$index',
      );

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        return DeletedId.fromJson(result);
      } else {
        log.logError('Failed to delete search item: ${response.statusCode}');
        return null;
      }
    } catch (e, stackTrace) {
      log.logError('An error occurred while deleting search item: $e');
      log.logError(stackTrace.toString());
      return null;
    }
  }

  Future<AllProductDeleted?> searchDeletedAll() async {
    try {
      final response = await _api.deleteWithToken(
        path: '/clear/searchHistory',
      );

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        return AllProductDeleted.fromJson(result);
      } else {
        log.logError(
            'Failed to delete all search history: ${response.statusCode}');
        return null;
      }
    } catch (e, stackTrace) {
      log.logError('An error occurred while deleting all search history: $e');
      log.logError(stackTrace.toString());
      return null;
    }
  }
}
