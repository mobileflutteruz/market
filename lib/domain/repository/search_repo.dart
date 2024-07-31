
import 'package:injectable/injectable.dart';
import 'dart:convert';
import 'package:karmango/core/constants/logger_service.dart';
import 'package:karmango/domain/model/search/search_product.dart';

import '../../data/api/api.dart';

@Injectable()
class SearchRepository {
  SearchRepository(this._api);

  final Api _api;
  final LoggingService log = LoggingService();

  Future<SearchProduct?> searchProduct({
    required String name,
  }) async {
    final response = await _api.getWithToken(
      path: '/search',
      params: {
        "name": name,
      },
    );
    final result = jsonDecode(response.body);

    return result;
  }
}
