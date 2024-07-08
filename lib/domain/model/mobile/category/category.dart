import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karmango/domain/model/mobile/cart_product/cart_product.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    int? id,
    String? name,
    String? image,
    DateTime? created_at,
    DateTime? updated_at,
    // List<ProductModel>? products
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);
}