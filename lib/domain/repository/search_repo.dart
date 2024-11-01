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


Future<List<SearchProduct>> searchProduct({required String name}) async {
  const baseUrl = 'https://karmango.shop.dukan.uz'; // Replace with your actual API endpoint

  // Debugging step: Print the constructed URL
  final url = Uri.parse('$baseUrl/api/search-product?name=$name');
  print('Sending request to: $url');

  // Simplified request for testing (remove if using token-based authentication)
  // final response = await http.get(url);

  final response = await _api.getWithToken(path: '/api/search-product?name=$name'); // Assuming _api.getWithToken handles tokens

  if (response.statusCode == 200) {
    final result = jsonDecode(response.body);

    if (result.containsKey('result')) {
      final List<SearchProduct> searchResults = List.from(result['result'])
          .map((el) => SearchProduct.fromJson(el))
          .toList();

      return searchResults;
    } else {
      throw Exception('API response does not contain "result" key');
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
