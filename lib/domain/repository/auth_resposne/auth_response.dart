import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
class AuthResponse with _$AuthResponse {
    const factory AuthResponse({
        bool? status,
        String? message,
        String? token,
        String? refresh_token,
        String? token_type,
        User? user,
        List<Permission>? permissions,
    }) = _AuthResponse;

    factory AuthResponse.fromJson(Map<String, dynamic> json) => _$AuthResponseFromJson(json);
}

@freezed
class Permission with _$Permission {
    const factory Permission({
        String? action,
        String? subject,
    }) = _Permission;

    factory Permission.fromJson(Map<String, dynamic> json) => _$PermissionFromJson(json);
}

@freezed
class User with _$User {
    const factory User({
        int? id,
        String? name,
        int? roleId,
        String? type,
        String? phone,
        dynamic email_verified_at,
        dynamic image,
        DateTime? created_at,
        DateTime? updated_at,
        Role? role,
    }) = _User;

    factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Role with _$Role {
    const factory Role({
        int? id,
        String? name,
        String? label,
        DateTime? created_at,
        dynamic updated_at,
    }) = _Role;

    factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}
