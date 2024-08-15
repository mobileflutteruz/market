import 'package:injectable/injectable.dart';
import 'dart:convert';
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

  Future<List<SearchProduct>?> searchProduct({
    required String name,
  }) async {
    final response = await _api.getWithToken(
      path: '/search',
      params: {
        "name": name,
      },
    );
    final result = jsonDecode(response.body);

    final List<SearchProduct> list = List.from(result['result'])
        .map((el) => SearchProduct.fromJson(el))
        .toList();

    return list;
  }

  Future<SearchedHistory> searchedHistory() async {
    final response = await _api.getWithToken(path: "/search");
    var data = jsonDecode(response.body);
    return SearchedHistory.fromJson(data);
  }

  Future<DeletedId?> searchDeletedId({
    required int index,
  }) async {
    final response = await _api.deleteWithToken(
      path: '/search/delete/${index}',
    );
    final result = jsonDecode(response.body);

    return DeletedId.fromJson(result);
  }

  Future<AllProductDeleted?> searchDeletedAll() async {
    final response = await _api.deleteWithToken(
      path: '/clear/searchHistory',
    );
    final result = jsonDecode(response.body);

    return AllProductDeleted.fromJson(result);
  }
}
