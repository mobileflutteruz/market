import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_product.freezed.dart';
part 'cart_product.g.dart';

@freezed
class CartProductModel with _$CartProductModel {
  const factory CartProductModel({
    int? id,
    String? image,
    String? name_uz,
    String? name_ru,
    String? name_en,
    DateTime? created_at,
    dynamic updated_at,
    List<Product>? products,
  }) = _CartProductModel;

  factory CartProductModel.fromJson(Map<String, dynamic> json) => _$CartProductModelFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    int? id,
    String? name_uz,
    String? name_ru,
    String? name_en,
    String? description_uz,
    String? description_ru,
    String? description_en,
    String? details_of_product_uz,
    String? details_of_product_ru,
    String? details_of_product_en,
    int? price,
    int? quantity,
    dynamic quantity_rest,
    double? discount,
    String? image,
    String? status,
    String? product_type,
    int? category_id,
    DateTime? created_at,
    DateTime? updated_at,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
