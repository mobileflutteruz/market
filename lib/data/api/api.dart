import 'dart:convert';
import 'package:karmango/domain/model/expections/invalid_credentials_exceptions.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_http_logger/pretty_http_logger.dart';
import '../preferences/token_preferences.dart';

@Injectable()
class Api {
  final TokenPreference _token;

  Api(this._token);

  final _host = "karmango.shop.dukan.uz";
  final _root = "/api";

  // final _timeout = const Duration(seconds: 20);

  static final HttpWithMiddleware _httpClient = HttpWithMiddleware.build(
    middlewares: [HttpLogger(logLevel: LogLevel.BODY)],
  );

  Future<Response> get({
    required String path,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.http(_host, "$_root/$path",
        params?.map((key, value) => MapEntry(key, value.toString())));
    final headers = await _headers;
    final result = await _httpClient.get(uri, headers: headers);
    // .timeout(_timeout);
    return propagateErrors(result);
  }

  Future<Response> getWithToken({
    required String path,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.https(_host, "$_root$path",
        params?.map((key, value) => MapEntry(key, value.toString())));
    final token = await _token.get();
    final headerv = {
      "Content-Type": "application/json",
      //  "Authorization": "Bearer $token"
    };
    if (token != null) {
      headerv["Authorization"] = "Bearer $token";
    }
    print(headerv);
    final result =
    await _httpClient.get(uri, headers: headerv);

    return propagateErrors(result);
  }


  Future<Response> deleteWithToken({
    required String path,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.https(_host, "$_root$path",
        params?.map((key, value) => MapEntry(key, value.toString())));
    final token = await _token.get();
    final headerv = {
      "Content-Type": "application/json",
      //  "Authorization": "Bearer $token"
    };
    if (token != null) {
      headerv["Authorization"] = "Bearer $token";
    }
    print(headerv);
    final result = await _httpClient.delete(uri, headers: headerv);
    // .timeout(_timeout);

    return propagateErrors(result);
  }

  Future<Response> postWithToken({
    required String path,
    Map<String, dynamic>? body,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.https(_host, "$_root$path", params);
    final headers = await headersWithToken;
    final result =
        await _httpClient.post(uri, headers: headers, body: jsonEncode(body));
    // .timeout(_timeout);
    return propagateErrors(result);
  }

  Future<Response> post({
    required String path,
    Map<String, dynamic>? body,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.http(_host, "$_root/$path", params);
    final headers = await _headers;
    final result =
        await _httpClient.post(uri, headers: headers, body: jsonEncode(body));
    // .timeout(_timeout);
    return propagateErrors(result);
  }

  Future<Response> put({
    required String path,
    Map<String, dynamic>? body,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.http(_host, "$_root/$path", params);
    final headers = await _headers;
    final result = await _httpClient.put(uri,
        headers: headers, body: body != null ? jsonEncode(body) : null);
    // .timeout(_timeout);
    return propagateErrors(result);
  }

  Future<Map<String, String>> get _headers async {
    final headers = <String, String>{
      "Content-Type": "application/json; charset=UTF-8"
    };

    // final token = await _token.get();
    // if (token != null) {
    //   headers["token"] = token;
    // }

    return headers;
  }

  Future<Map<String, String>> get headersWithToken async {
    var token = await _token.get();

    final headers = <String, String>{
      "Content-Type": "application/json",
      "Authorization": "Bearer $token",
    };

    return headers;
  }

  // gettokens() async {
  //   var token = await _token.getToken();
  //   print("tokennnnnnnnn>>>>>>>>>");
  //   print(token);
  //   var guesttoken = await _token.getGuestUser();
  //   print("""""here----------------->>>guest""" "");
  //   print(guesttoken);
  //
  //   return token ?? guesttoken;
  // }

  Future<Response> propagateErrors(Response response) async {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return response;
    }

    switch (response.statusCode) {
      // case 404:
      //   throw UserNotFoundException();
      case 403:
        //await _token.clear();
        throw InvalidCredentialsExceptions();
      // case 402:
      //   throw NameUnavailableException();
      default:
        throw Exception();
    }
  }
}
