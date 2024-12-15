import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_edit_model.freezed.dart';
part 'profile_edit_model.g.dart';

@freezed
class ProfileEditModel with _$ProfileEditModel {
  const factory ProfileEditModel({
    required bool status,
    required String message,
    required int code,
    required String phone,
  }) = _ProfileEditModel;

  factory ProfileEditModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileEditModelFromJson(json);
}
