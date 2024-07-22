import 'dart:convert';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/domain/expections/invalid_credentials_exceptions.dart';
import 'package:karmango/domain/model/expections/invalid_credentials_exceptions.dart';
import 'package:pretty_http_logger/pretty_http_logger.dart';
import '../../config/user_session_manager.dart';
import '../preferences/token_preferences.dart';

@Injectable()
class Api {
  final TokenPreference _token;
  final UserSessionManager _userSessionManager;


  Api(this._token, this._userSessionManager);

  final _host = "karmango.shop.dukan.uz";  // Removed https://
  final _root = "/api";
  final _timeout = const Duration(seconds: 20);


  static final HttpWithMiddleware _httpClient = HttpWithMiddleware.build(
    middlewares: [HttpLogger(logLevel: LogLevel.BODY)],
  );

  Future<Response> get({
    required String path,
    Map<String, Object>? params,
  }) async {
    try {
      final uri = Uri.https(_host, "$_root$path", _convertParams(params));
      final headers = await _headers;
      final result = await _httpClient.get(uri, headers: headers).timeout(_timeout);
      return propagateErrors(result);
    } catch (e) {
      print(' GET  ClientException: $e');
      rethrow;
    }
  }

  Future<Response> getWithToken({
    required String path,
    Map<String, Object>? params,
  }) async {
    try {
      final uri = Uri.https(_host, "$_root$path", _convertParams(params));
      final headers = await _headersWithToken;
      final result = await _httpClient.get(uri, headers: headers).timeout(_timeout);
      return propagateErrors(result);
    } catch (e) {
      print('GetWithToken  ClientException: $e');
      rethrow;
    }
  }

  Future<Response> deleteWithToken({
    required String path,
    Map<String, Object>? params,
  }) async {
    try {
      final uri = Uri.https(_host, "$_root$path", _convertParams(params));
      final headers = await _headersWithToken;
      final result = await _httpClient.delete(uri, headers: headers).timeout(_timeout);
      return propagateErrors(result);
    } catch (e) {
      print('DeleteWithToken ClientException: $e');
      rethrow;
    }
  }
  


  Future<Response> postWithToken({
    required String path,
    Map<String, dynamic>? body,
    Map<String, Object>? params,
  }) async {
    try {
      final uri = Uri.https(_host, "$_root$path", _convertParams(params));
      final headers = await _headersWithToken;
      final result = await _httpClient.post(uri, headers: headers, body: jsonEncode(body)).timeout(_timeout);
      return propagateErrors(result);
    } catch (e) {
      print('PostWithToken ClientException: $e');
      rethrow;
    }
  }

  Future<Response> post({
    required String path,
    Map<String, dynamic>? body,
    Map<String, Object>? params,
  }) async {
    try {
      final uri = Uri.https(_host, "$_root$path", _convertParams(params));
      final headers = await _headers;
      final result = await _httpClient.post(uri, headers: headers, body: jsonEncode(body)).timeout(_timeout);
      return propagateErrors(result);
    } catch (e) {
      print('Post ClientException: $e');
      rethrow;
    }
  }

  Future<Response> put({
    required String path,
    Map<String, dynamic>? body,
    Map<String, Object>? params,
  }) async {
    try {
      final uri = Uri.https(_host, "$_root$path", _convertParams(params));
      final headers = await _headers;
      final result = await _httpClient.put(uri, headers: headers, body: jsonEncode(body)).timeout(_timeout);
      return propagateErrors(result);
    } catch (e) {
      print('Put ClientException: $e');
      rethrow;
    }
  }

  Future<Map<String, String>> get _headersWithToken async {
    final token = await getToken();
    final headers = <String, String>{
      "Accept": "application/json",
      "Authorization": "Bearer $token"
    };
    return headers;
  }

  Future<String?> getToken() async {
    var token = await _userSessionManager.getToken();
    if (token == null) {
      var guestToken = await _token.getGuestUser();
      return guestToken;
    }
    return token;
  }

  Future<Map<String, String>> get _headers async {
    return {"Content-Type": "application/json; charset=UTF-8"};
  }

  Map<String, String> _convertParams(Map<String, Object>? params) {
    return params?.map((key, value) => MapEntry(key, value.toString())) ?? {};
  }

    Future<Response> propagateErrors(Response response) async {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return response;
    }

    switch (response.statusCode) {
      case 404:
        throw UserNotFoundException();
      case 403:
        throw InvalidCredentialsExceptions();
      case 402:
        throw NameUnavailableException();
      default:
        print('Unexpected error: ${response.statusCode} - ${response.body}');
        throw Exception('Unexpected error: ${response.statusCode}');
    }
  }

  
}
