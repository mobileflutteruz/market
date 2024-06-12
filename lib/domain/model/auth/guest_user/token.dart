import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'token.freezed.dart';
part 'token.g.dart';

@freezed
class TokenResponse with _$TokenResponse {
    const factory TokenResponse({
        String? access_token,
        String? refresh_token,
        String? token_type,
        User? user,
    }) = _TokenResponse;

    factory TokenResponse.fromJson(Map<String, dynamic> json) => _$TokenResponseFromJson(json);
}

@freezed
class User with _$User {
    const factory User({
        String? name,
        String? type,
    }) = _User;

    factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
