import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class UserModel with _$UserModel {
  // @JsonSerializable(fieldRename: FieldRename.snake)
  const factory UserModel({
    required int? user_id,
    required String? user_name,
    required String? user_status,
    required bool? status,
    required String? message,
    required String? access_token,
    required String? refresh_token,
    required String? token_type,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    String? name,
    String? phone,
    String? token,
    dynamic photo,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}

@freezed
class UserInfoss with _$UserInfoss {
  const factory UserInfoss({
    bool? status,
    User? data,
  }) = _UserInfoss;

  factory UserInfoss.fromJson(Map<String, Object?> json) =>
      _$UserInfossFromJson(json);
}

@freezed
class Role with _$Role {
  const factory Role({String? name}) = _Role;

  factory Role.fromJson(Map<String, Object?> json) => _$RoleFromJson(json);
}

@freezed
class ResendActivation with _$ResendActivation {
  const factory ResendActivation({
    required bool status,
    required String message,
  }) = _ResendActivation;

  factory ResendActivation.fromJson(Map<String, dynamic> json) =>
      _$ResendActivationFromJson(json);
}
