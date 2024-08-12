import 'package:http/http.dart';

class ErrorException implements Exception {
Response msg;
ErrorException(this.msg);
}