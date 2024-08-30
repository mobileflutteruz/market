import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_model.freezed.dart';
part 'change_password_model.g.dart';

@freezed
class ChangePasswordModel with _$ChangePasswordModel {
    const factory ChangePasswordModel({
        bool? status,
        String? message,
        // ignore: non_constant_identifier_names
        int? user_id,
        // ignore: non_constant_identifier_names
        String? user_name,
        String? token,
        // ignore: non_constant_identifier_names
        String? token_type,
    }) = _ChangePasswordModel;

    factory ChangePasswordModel.fromJson(Map<String, dynamic> json) => _$ChangePasswordModelFromJson(json);
}
