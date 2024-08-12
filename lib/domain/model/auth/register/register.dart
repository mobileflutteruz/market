import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'register.freezed.dart';
part 'register.g.dart';

@freezed
class RegisterModel with _$RegisterModel {
    const factory RegisterModel({
        bool? status,
        String? message,
        String? phone,
    }) = _RegisterModel;

    factory RegisterModel.fromJson(Map<String, dynamic> json) => _$RegisterModelFromJson(json);
}
