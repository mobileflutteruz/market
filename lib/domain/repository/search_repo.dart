import 'dart:convert';
import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:karmango/core/constants/logger_service.dart';
import 'package:karmango/domain/model/search/all_product_deleted/all_product_deleted.dart';
import 'package:karmango/domain/model/search/deletedId/deletedId.dart';
import 'package:karmango/domain/model/search/search_product.dart';
import 'package:karmango/domain/model/search/searched/searched_history.dart';
import '../../data/api/api.dart';
import 'package:http/http.dart' as http;

@Injectable()
class SearchRepository {
  SearchRepository(this._api);

  final Api _api;
  final LoggingService log = LoggingService();

// Future<List<SearchProduct>> searchProduct({required String name,}) async {
 

//   try {
//       final response =
//         await _api.getWithToken(path: '/search-product?name=$name');

//     if (response.statusCode == 200) {
//       final dynamic decodedJson = jsonDecode(response.body);

//       if (decodedJson is List) {
//         final List<SearchProduct> searchResults = decodedJson
//             .map((item) => SearchProduct.fromJson(item as Map<String, dynamic>))
//             .toList();
//         return searchResults;
//       } else {
//         throw FormatException('API response is not a List: ${response.body}');
//       }
//     } else {
//       throw HttpException('API request failed with status code ${response.statusCode}: ${response.body}');
//     }
//   } on FormatException catch (e) {
//     print('FormatException: $e');
//     rethrow;
//   } on HttpException catch (e) {
//     print('HttpException: $e');
//     rethrow;
//   } catch (e) {
//     print('Unexpected error: $e');
//     rethrow;
//   }
// }

  Future<List<SearchProduct>> searchProduct({required String name}) async {
  final response = await _api.getWithToken(path: '/search-product?name=$name');

  if (response.statusCode == 200) {
    final result = jsonDecode(response.body);

    if (result is List) {
      // Result massiv bo'lsa, uni `SearchProduct` obyektiga aylantiramiz
      final List<SearchProduct> searchResults =
          result.map((el) => SearchProduct.fromJson(el)).toList();

      return searchResults;
    } else {
      throw Exception('API response is not a list.');
    }
  } else {
    throw Exception('API request failed with status code ${response.statusCode}');
  }
}


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
