import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'deletedId.freezed.dart';
part 'deletedId.g.dart';

@freezed
class DeletedId with _$DeletedId {
  const factory DeletedId({
    bool? status,
    String? message,
  }) = _DeletedId;

  factory DeletedId.fromJson(Map<String, dynamic> json) =>
      _$DeletedIdFromJson(json);
}
