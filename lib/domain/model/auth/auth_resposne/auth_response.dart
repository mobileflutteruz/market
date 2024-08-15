import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    bool? status,
    String? message,
    int? user_id,
    String? user_name,
    String? token,
    String? token_type,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}
