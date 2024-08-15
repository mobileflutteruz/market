// import 'dart:io';

// import 'package:dio/dio.dart' as dio;
// import 'package:dio/dio.dart';
// import 'package:injectable/injectable.dart';
// import 'package:karmango/data/preferences/token_preferences.dart';
// import 'package:karmango/domain/expections/invalid_credentials_exceptions.dart';

// @Injectable()
// class ServiceApiExample {
//   final TokenPreference _token;
//   Dio dio = Dio();
//   ServiceApiExample(this._token);

//   // Future fetch({
//   //   required String path,
//   //   Map<String, Object>? params,
//   // }) async {
//   //   var header = await _headersget;

//   //   Response response = await dio.get(
//   //     "$_host$_root/$path",
//   //     queryParameters:
//   //         params?.map((key, value) => MapEntry(key, value.toString())),
//   //     options: Options(
//   //       headers: header,
//   //       validateStatus: (status) => true,
//   //       followRedirects: false,
//   //       receiveTimeout: const Duration(seconds: 15),
//   //     ),
//   //   );

//   //   return propagateErrors(response);
//   // }

//   Future<Response> post({
//     required String path,
//     Map<String, Object>? params,
//     Map<String, dynamic>? body,
//   }) async {
//     var header = await _headers;

//     Response response = await dio.post(
//       "$_host$_root/$path",
//       queryParameters:
//           params?.map((key, value) => MapEntry(key, value.toString())),
//       data: body,
//       options: Options(
//         validateStatus: (status) => true,
//         followRedirects: false,
//         headers: header,
//         receiveTimeout: const Duration(seconds: 15),
//       ),
//     );

//     return propagateErrors(response);
//   }

//   Future<Response> put({
//     required String path,
//     Map<String, Object>? params,
//     Map<String, dynamic>? body,
//   }) async {
//     var header = await _headers;

//     Response response = await dio.put(
//       "$_host$_root/$path",
//       queryParameters:
//           params?.map((key, value) => MapEntry(key, value.toString())),
//       data: body,
//       options: Options(
//         headers: header,
//         validateStatus: (status) => true,
//         followRedirects: false,
//         receiveTimeout: const Duration(seconds: 15),
//       ),
//     );

//     return propagateErrors(response);
//   }

//   Future uploadmultipleimage({required String path, var formData}) async {
//     final headers = await _headersMultipart;

//     Response response = await dio.post(
//       "$_host$_root/$path",
//       data: formData,
//       options: Options(
//         headers: headers,
//         followRedirects: false,
//         validateStatus: (status) => true,
//       ),
//       onSendProgress: (received, total) {
//         if (total != -1) {}
//       },
//     );

//     return propagateErrors(response);
//   }

//   Future<Map<String, String>> get _headersMultipart async {
//     final token = await _token.get();
//     final headers = <String, String>{
//       "Content-Type": "multipart/form-data",
//       HttpHeaders.acceptHeader: "application/json",
//       "Authorization": "Bearer $token"
//     };

//     return headers;
//   }

//   Future<Map<String, String>> get _headers async {
//     final token = await _token.get();
//     final headers = <String, String>{
//       "Content-Type": "application/json",
//       "accept": "application/json",
//     };
//     if (token != null) {
//       headers["Authorization"] =
//           "Bearer 14|UTsFpQO9R89JEVE3kLVIM1NDzM0iVRQ7J0Qonh4v01b2a6f9";
//     }

//     return headers;
//   }

//   Future<Map<String, String>> get _headersget async {
//     final token = await _token.get();
//     print(token);
//     final headers = <String, String>{
//       "Content-Type": "application/json",
//       "Authorization": "Bearer $token"
//     };

//     return headers;
//   }

//   Future<Response> propagateErrors(Response response) async {
//     print(response.statusCode);
//     print(response.data);
//     if (response.statusCode! >= 200 && response.statusCode! < 300) {
//       return response;
//     }

//     switch (response.statusCode) {
//       // case 404:
//       //   throw UserNotFoundException();
//       case 403:
//         await _token.clear();
//         throw InvalidCredentialsExceptions();
//       // case 402:
//       //   throw NameUnavailableException();
//       default:
//         throw Exception();
//     }
//   }

//   Future psotdata({
//     required String path,
//     Map<String, Object>? params,
//     Map<String, dynamic>? body,
//   }) async {
//     String token =
//         "14|UTsFpQO9R89JEVE3kLVIM1NDzM0iVRQ7J0Qonh4v01b2a6f9"; // Replace with your actual authentication token

//     Options options = Options(
//       headers: {
//         'Authorization': 'Bearer $token',
//         'Content-Type': 'multipart/form-data',
//         "Accept": "/"
//       },
//       validateStatus: (status) => true,
//     );

//     // Making POST request with headers and data
//     Response response = await dio.post(
//       "$_host$_root/$path",
//       data: body,
//       options: options,
//     );

//     // Handle the response data here
//     print('Response: ${response.data}');
//     return propagateErrors(response);
//   }
// }
