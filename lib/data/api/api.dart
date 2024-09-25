import 'dart:convert';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/config/token_data_source.dart';
import 'package:karmango/domain/expections/error_exception.dart';
import 'package:karmango/domain/expections/invalid_credentials_exceptions.dart';
import 'package:karmango/domain/expections/token_not_provided_credential.dart';
import 'package:karmango/domain/model/expections/invalid_credentials_exceptions.dart';
import 'package:pretty_http_logger/pretty_http_logger.dart';

@Injectable()
class Api {
  final TokenDataSource _token;

  Api(this._token);

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
    try {
      final result =
          await _httpClient.get(uri, headers: headers).timeout(_timeout);
      return propagateErrors(result);
    } on TimeoutException {
      throw Exception('Request timed out');
    }
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
    try {
      final result =
          await _httpClient.get(uri, headers: headers).timeout(_timeout);
      return propagateErrors(result);
    } on TimeoutException {
      throw Exception('Request timed out');
    }
  }

  //!post
  Future<Response> post({
    required String path,
    Map<String, dynamic>? body,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.https(_host, "$_root$path", params);
    final headers = await headerswithToken;
    try {
      final result = await _httpClient
          .post(uri, headers: headers, body: jsonEncode(body))
          .timeout(_timeout);
      return propagateErrors(result);
    } on TimeoutException {
      throw Exception('Request timed out');
    }
  }

  //!deleteWithToken
  Future<Response> deleteWithToken({
    required String path,
    Map<String, dynamic>? body,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.https(_host, "$_root/$path", params);
    final headers = await headerswithToken;
    try {
      final result = await _httpClient
          .delete(uri, headers: headers, body: jsonEncode(body))
          .timeout(_timeout);
      return propagateErrors(result);
    } on TimeoutException {
      throw Exception('Request timed out');
    }
  }

  //!postMultiPart
  Future<Response> postMultiPart({
    required String path,
    var body,
    var params,
  }) async {
    final uri = Uri.https(_host, "$_root/$path", params);
    final headers = await headerswithToken;
    try {
      final result =
          await _httpClient.post(uri, headers: headers, body: jsonEncode(body));
      return propagateErrors(result);
    } on TimeoutException {
      throw Exception('Request timed out');
    }
  }

  //!put
  Future<Response> put({
    required String path,
    Map<String, dynamic>? body,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.http(_host, "$_root/$path", params);
    final headers = await headerswithToken;
    try {
      final result = await _httpClient
          .put(uri, headers: headers, body: jsonEncode(body))
          .timeout(_timeout);
      return propagateErrors(result);
    } on TimeoutException {
      throw Exception('Request timed out');
    }
  }

  //!postWithToken
  Future<Response> postWithToken({
    required String path,
    Map<String, dynamic>? body,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.https(_host, "$_root$path", params);
    final headers = await headerswithToken;
    try {
      final result = await _httpClient
          .post(uri, headers: headers, body: jsonEncode(body))
          .timeout(_timeout);
      return propagateErrors(result);
    } on TimeoutException {
      throw Exception('Request timed out');
    }
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
    return <String, String>{"Content-Type": "application/json"};
  }

  //!propagateErrors
  Response propagateErrors(Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return response;
    }
    switch (response.statusCode) {
      case 401:
        throw TokenCredentialExceptions();
      case 400:
        throw ErrorException(response); 
      case 403:
        _token.clearToken(); // Clear token on invalid credentials
        throw InvalidCredentialsExceptions();
      default:
        throw Exception(
            "Unknown error: ${response.statusCode} - ${response.body}");
    }
  }

  //!gettokens
  Future<String?> gettokens() async {
    var token = await _token.getToken();
    if (token == null) {
      print("Token mavjud emas, guest token olinmoqda...");
      token = await _token.getGuestToken();
    }

    if (token == null) {
      print("Guest token ham mavjud emas.");
    } else {
      print("Token olingan: $token");
    }

    return token;
  }

  //!putWithToken
  Future<Response> putWithToken({
    required String path,
    Map<String, dynamic>? body,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.https(_host, "$_root$path", params);
    final headers = await headerswithToken;
    try {
      final result = await _httpClient
          .put(uri, headers: headers, body: jsonEncode(body))
          .timeout(_timeout);
      return propagateErrors(result);
    } on TimeoutException {
      throw Exception('Request timed out');
    }
  }
}
