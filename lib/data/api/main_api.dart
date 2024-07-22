import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/data/api/api.dart';
import 'package:logger/logger.dart';

@Injectable()
class MainApi {
  final Api _api;
  Logger log = Logger();

  MainApi(this._api);

  Future<Response> getMobileHomeProducts(int page, int size) async {
    final params = {'page': page, 'size': size};
    return await _api.get(path: '/HomePage', params: params);
  }

  Future<Response> fetchProductDetails(int productID) async {
    return await _api.get(path: 'productPage/$productID');
  }

  Future<Response> getCategory() async {
    try {
      return await _api.getWithToken(path: '/category');
    } catch (e) {
      log.e('Error fetching category: $e');
      rethrow;
    }
  }

  Future<Response> createGuestLogin() async {
    final params = {
      "uuid": "some-uuid",
      "model": "some-model",
    };
    try {
      return await _api.postWithToken(path: 'guest/login', body: params);
    } catch (e) {
      debugPrint('Error creating guest login: $e');
      rethrow;
    }
  }
}
