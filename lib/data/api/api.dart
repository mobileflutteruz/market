import 'dart:convert';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/config/token_data_source.dart';
import 'package:karmango/config/user_session_manager.dart';
import 'package:karmango/domain/expections/error_exception.dart';
import 'package:karmango/domain/expections/invalid_credentials_exceptions.dart';
import 'package:karmango/domain/expections/token_not_provided_credential.dart';
import 'package:karmango/domain/model/expections/invalid_credentials_exceptions.dart';
import 'package:pretty_http_logger/pretty_http_logger.dart';

@Injectable()
class Api {
  final TokenDataSource _token;
  final UserSessionManager _userSessionmanager;
  Api(this._token, this._userSessionmanager);

  final String _host = "karmango.shop.dukan.uz";
  final String _root = "/api";
  final _timeout = const Duration(seconds: 15);

  static final HttpWithMiddleware _httpClient = HttpWithMiddleware.build(
    middlewares: [HttpLogger(logLevel: LogLevel.BODY)],
  );

  //!GET
  Future<Response> get({
    required String path,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.http(_host, "$_root/$path",
        params?.map((key, value) => MapEntry(key, value.toString())));
    final headers = await headerswithToken;
    final result = await _httpClient.get(uri, headers: headers).timeout(_timeout);
    return propagateErrors(result);
  }

  //!getWithToken
  Future<Response> getWithToken({
    required String path,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.https(_host, "$_root$path",
        params?.map((key, value) => MapEntry(key, value.toString())));
    final token = await gettokens();
    final headers = {
      "Content-Type": "application/json",
      if (token != null) "Authorization": "Bearer $token",
    };
    print(headers);
    final result = await _httpClient.get(uri, headers: headers).timeout(_timeout);
    return propagateErrors(result);
  }

  //!post
  Future<Response> post({
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

  //!deleteWithToken
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

  //!deleteLikes
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

  //!postMultiPart
  Future<Response> postMultiPart({
    required String path,
    var body,
    var params,
  }) async {
    final uri = Uri.https(_host, "$_root/$path", params);
    final headers = await headerswithToken;
    final result =
        await _httpClient.post(uri, headers: headers, body: jsonEncode(body));
    return propagateErrors(result);
  }

  //!put
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

  //!postWithToken
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

  //!headerswithToken
  Future<Map<String, String>> get headerswithToken async {
    final token = await gettokens();
    final headers = <String, String>{
      "Content-Type": "application/json",
    };
    if (token != null) {
      headers["Authorization"] = "Bearer $token";
    }
    return headers;
  }

  //!_headers
  Future<Map<String, String>> get _headers async {
    final headers = <String, String>{"Content-Type": "application/json"};
    return headers;
  }

  //!propagateErrors
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
        await _token.clearToken();
        throw InvalidCredentialsExceptions();
      default:
        throw Exception([response.body]);
    }
  }

  //!gettokens
  Future<String?> gettokens() async {
  var token = await _token.getToken();
  if (token == null) {
    print("Token mavjud emas, guest token olinmoqda...");
    token = await _token.getGuestUser();
  }
  
  if (token == null) {
    print("Guest token ham mavjud emas.");
  } else {
    print("Token olingan: $token");
  }
  
  return token;
}

}
