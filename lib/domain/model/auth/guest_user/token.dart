import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';
part 'token.g.dart';

@freezed
class GuestModel with _$GuestModel {
  const factory GuestModel({
    bool? status,
    String? token,
    String? token_type,
    User? user,
  }) = _GuestModel;

  factory GuestModel.fromJson(Map<String, dynamic> json) =>
      _$GuestModelFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    String? name,
    String? type,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
