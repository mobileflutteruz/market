import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'cart_product.g.dart';
part 'cart_product.freezed.dart';


@freezed
class ProductModel with _$ProductModel {
    const factory ProductModel({
        int? id,
        String? name,
        String? image,
        DateTime? created_at,
        dynamic updated_at,
        List<Product>? products,
    }) = _ProductModel;

    factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
}

@freezed
class Product with _$Product {
    const factory Product({
        int? id,
        String? name,
        dynamic description,
        dynamic details_of_product,
        int? price,
        int? quantity,
        int? quantity_rest,
        int? discount,
        String? image,
        String? status,
        String? product_type,
        int? category_id,
        dynamic created_at,
        dynamic updated_at,
    }) = _Product;

    factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
