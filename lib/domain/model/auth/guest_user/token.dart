import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'token.freezed.dart';
part 'token.g.dart';


@freezed
class AccessToken with _$AccessToken {
    const factory AccessToken({
        String? accessToken,
        String? tokenType,
        User? user,
    }) = _AccessToken;

    factory AccessToken.fromJson(Map<String, dynamic> json) => _$AccessTokenFromJson(json);
}

@freezed
class User with _$User {
    const factory User({
        String? name,
        String? type,
    }) = _User;

    factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
