import 'dart:io';

import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/data/api/api.dart';
import 'package:karmango/data/api/example.dart';
import 'package:logger/logger.dart';
import 'package:http_parser/http_parser.dart';


@Injectable()
class MainApi {
  final Api _api;

  MainApi(this._api, this._api2);
  Logger log = Logger();
   final ServiceApiExample _api2;
   Future<Response> getMobileHomeProducts(int page, int size) async {
    final Map<String, Object> params = {'page': page, 'size': size};
    var data = await _api.get(path: '/HomePage', params: params);
    return data;
  }
   Future<Response> fetchProductDetails(int productID) async {
    var data = await _api.get(
      path: 'productPage/$productID',
    );
    return data;
  }

  Future<dio.Response> updateProfile(
      {File? photo, String? name, String? phone, int? gender}) async {
    var image = photo != null
        ? await dio.MultipartFile.fromFile(photo!.path,
            filename: photo.path.split('/').last,
            contentType: MediaType('image', 'jpg'))
        : null;

    final dio.FormData formData = dio.FormData.fromMap({
      "photo": image,
      "name": name,
      "phone": phone,
      "gender": gender,
    });
    var data = await _api2.uploadmultipleimage(
      path: "client/profile/update",
      formData: formData,
    );
    return data;
  }



  Future<Response> getCategory() async {
    try {
      var data = await _api.getWithToken(path: 'category');
      return data;
    } catch (e) {
       log.e('Error fetching category: $e');

      rethrow;
    }
  }



// Future<Response> getProducts() async {
//   try {
//     var data = await _api.getWithToken(path: 'book-group/public-list');
//     return data;
//   } catch (e) {
//     print('Error fetching products: $e');
//     rethrow;
//   }
// }




// Future<Response> fetchCategories(int id) async {
//   try {
//     var data = await _api.getWithToken(path: 'book/public-list/$id');
//     return data;
//   } catch (e) {
//     print('Error fetching categories: $e');
//     rethrow;
//   }
// }



// Future<Response> fetchSearch(String query) async {
//   final Map<String, Object> params = {'name': query};
//   try {
//     var data = await _api.getWithToken(path: 'book/public-search', params: params);
//     return data;
//   } catch (e) {
//     print('Error fetching search results: $e');
//     rethrow;
//   }
// }

// Future<Response> saveBookmark(int id) async {
//   final Map<String, Object> params = {'book_id': id.toString()};
//   try {
//     var data = await _api.postWithToken(path: 'bookmark/store', body: params);
//     return data;
//   } catch (e) {
//     print('Error saving bookmark: $e');
//     rethrow;
//   }
// }

// Future<Response> deleteBookmark(int id) async {
//   final Map<String, Object> params = {'book_id': id.toString()};
//   try {
//     var data = await _api.deleteWithToken(path: 'bookmark/destroy', params: params);
//     return data;
//   } catch (e) {
//     print('Error deleting bookmark: $e');
//     rethrow;
//   }
// }


// Future<Response> fetchPayemntCards() async {
//   try {
//     var data = await _api.getWithToken(path: 'payment/uzcard-list');
//     return data;
//   } catch (e) {
//     print('Error fetching payment cards: $e');
//     rethrow;
//   }
// }

// Future<Response> createPaymentCard(
//     String cardNumber, String expryDate, String name) async {
//   final Map<String, Object> params = {
//     "pan": cardNumber,
//     "expiry": expryDate,
//     'name': name
//   };
//   try {
//     var data = await _api.postWithToken(path: 'payment/token', body: params);
//     return data;
//   } catch (e) {
//     print('Error creating payment card: $e');
//     rethrow;
//   }
// }

// Future<Response> createPayment(
//     int amount, String token, int invoiceId) async {
//   final Map<String, Object> params = {
//     "amount": amount.toString(),
//     "token": token,
//     'invoice_id': invoiceId.toString()
//   };
//   try {
//     var data = await _api.postWithToken(path: 'payment/create', body: params);
//     return data;
//   } catch (e) {
//     print('Error creating payment: $e');
//     rethrow;
//   }
// }

Future<Response> createGuestLogin() async {
  final Map<String, Object> params = {
    "uuid": "some-uuid",
    "model": "some-model",
  };
  try {
    var data = await _api.postWithToken(path: 'guest/login', body: params);
    return data;
  } catch (e) {
    debugPrint('Error creating guest login: $e');
    rethrow;
  }
}

// Future<Response> getStats(int page, int size) async {
//   final params = {'page': page, 'size': size};
//   try {
//     return _api.get(path: 'stats', params: params);
//   } catch (e) {
//     print('Error getting stats: $e');
//     rethrow;
//   }
// }

// Future<Response> getCustomers(String? search, int page, int size) {
//
}
