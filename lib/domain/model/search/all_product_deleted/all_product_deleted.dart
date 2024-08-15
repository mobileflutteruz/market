import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'all_product_deleted.freezed.dart';
part 'all_product_deleted.g.dart';

@freezed
class AllProductDeleted with _$AllProductDeleted {
  const factory AllProductDeleted({
    bool? status,
    String? message,
  }) = _AllProductDeleted;

  factory AllProductDeleted.fromJson(Map<String, dynamic> json) =>
      _$AllProductDeletedFromJson(json);
}
