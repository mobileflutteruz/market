import 'dart:convert';

import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/data/preferences/token_preferences.dart';
import 'package:karmango/domain/expections/error_exception.dart';
import 'package:karmango/domain/expections/invalid_credentials_exceptions.dart';
import 'package:karmango/domain/expections/token_not_provided_credential.dart';
import 'package:karmango/domain/model/expections/invalid_credentials_exceptions.dart';

import 'package:pretty_http_logger/pretty_http_logger.dart';

@Injectable()
class Api {
  final TokenPreference _token;

  Api(this._token);

//pub.kytab.uz
//beta.kytab.uz
final String _host = "karmango.shop.dukan.uz";
final String _root = "/api";

  final _timeout = const Duration(seconds: 15);

  static final HttpWithMiddleware _httpClient = HttpWithMiddleware.build(
    middlewares: [HttpLogger(logLevel: LogLevel.BODY)],
  );

  Future<Response> get({
    required String path,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.http(_host, "$_root/$path",
        params?.map((key, value) => MapEntry(key, value.toString())));
    final headers = await headerswithToken;
    final result =
        await _httpClient.get(uri, headers: headers).timeout(_timeout);
    return propagateErrors(result);
  }

  Future<Response> getWithToken(
      {required String path, Map<String, Object>? params}) async {
    final uri = Uri.https(_host, "$_root$path",
        params?.map((key, value) => MapEntry(key, value.toString())));
    final token = await gettokens();
    final headerv = {
      "Content-Type": "application/json",
      //  "Authorization": "Bearer $token"
    };
    // final token = await _token.get();
    if (token != null) {
      headerv["Authorization"] = "Bearer $token";
    }
    print(headerv);
    final result =
        await _httpClient.get(uri, headers: headerv).timeout(_timeout);

    return propagateErrors(result);
  }

  Future<Response> post({
    required String path,
    Map<String, dynamic>? body,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.https(_host, "$_root$path", params);
    final headers = await _headers;
    final result = await _httpClient
        .post(uri, headers: headers, body: jsonEncode(body))
        .timeout(_timeout);
    return propagateErrors(result);
  }

  Future<Response> postWithToken({
    required String path,
    Map<String, dynamic>? body,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.https(_host, "$_root$path", params);
    final headers = await headerswithToken;
    final result = await _httpClient
        .post(uri, headers: headers, body: jsonEncode(body))
        .timeout(_timeout);
    return propagateErrors(result);
  }

  Future<Response> deleteWithToken({
    required String path,
    Map<String, dynamic>? body,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.https(_host, "$_root/$path", params);
    final headers = await headerswithToken;
    final result = await _httpClient
        .delete(uri, headers: headers, body: jsonEncode(body))
        .timeout(_timeout);
    return propagateErrors(result);
  }

  Future<Response> deleteLikes({
    required String path,
    Map<String, dynamic>? body,
    Map<String, Object>? params,
    String? id,
  }) async {
    final uri = Uri.https(_host, "$_root/$path/$id", params);
    final headers = await headerswithToken;
    final result = await _httpClient
        .delete(uri, headers: headers, body: jsonEncode(body))
        .timeout(_timeout);
    return propagateErrors(result);
  }

  Future<Response> postMultiPart({
    required String path,
    var body,
    var params,
  }) async {
    final uri = Uri.https(_host, "$_root/$path", params);
    final headers = await _headersMultipart;
    final result =
        await _httpClient.post(uri, headers: headers, body: jsonEncode(body));
    return propagateErrors(result);
  }

  Future<Response> put({
    required String path,
    Map<String, dynamic>? body,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.http(_host, "$_root/$path", params);
    final headers = await _headers;
    final result = await _httpClient
        .put(uri,
            headers: headers, body: body != null ? jsonEncode(body) : null)
        .timeout(_timeout);
    return propagateErrors(result);
  }

  Future<Map<String, String>> get _headers async {
    final headers = <String, String>{"Content-Type": "application/json"};

    // final token = await _token.get();
    // if (token != null) {
    //   headers["token"] = token;
    // }

    return headers;
  }

  Future<Map<String, String>> get headerswithToken async {
    final token = await gettokens();
    final headers = <String, String>{
      "Content-Type": "application/json",
      "authorization": "Bearer $token",
    };
    // final token = await _token.get();
    // if (token != null) {
    //   headers["token"] = token;
    // }

    return headers;
  }

  Future<Map<String, String>> get _headersMultipart async {
    final headers = <String, String>{"Content-Type": "multipart/form-data"};

    // final token = await _token.get();
    // if (token != null) {
    //   headers["token"] = token;
    // }

    return headers;
  }

  Future<Response> propagateErrors(Response response) async {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return response;
    }
    switch (response.statusCode) {
      case 401:
        throw TokenCredentialExceptions();
      case 404:
        throw UserNotFoundException();
      case 400:
        throw ErrorException(response);
      case 403:
        await _token.clear();
        throw InvalidCredentialsExceptions();
      // case 402:
      //   throw NameUnavailableException();
      default:
        throw Exception([response.body]);
    }
  }

  gettokens() async {
    var token = await _token.get();
    print("tokennnnnnnnn>>>>>>>>>");
    print(token);
    var guesttoken = await _token.getGuestUser();
    print("""""here----------------->>>guest""" "");
    print(guesttoken);

    return token ?? guesttoken;
  }
}
