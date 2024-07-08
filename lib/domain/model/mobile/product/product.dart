import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'product.freezed.dart';
part 'product.g.dart';


@freezed
class ProductDataModel with _$ProductDataModel {
    const factory ProductDataModel({
        bool? status,
        Result? result,
    }) = _ProductDataModel;

    factory ProductDataModel.fromJson(Map<String, dynamic> json) => _$ProductDataModelFromJson(json);
}

@freezed
class Result with _$Result {
    const factory Result({
        Product? product,
        List<SimilarProduct>? similar_products,
    }) = _Result;

    factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
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
        DateTime? updated_at,
        int? rest_products,
        int? price_to_pay,
    }) = _Product;

    factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

@freezed
class SimilarProduct with _$SimilarProduct {
    const factory SimilarProduct({
        int? id,
        String? name,
        String? status,
        int? discount,
        int? price,
        String? image,
        String? product_type,
        double? price_to_pay,
    }) = _SimilarProduct;

    factory SimilarProduct.fromJson(Map<String, dynamic> json) => _$SimilarProductFromJson(json);
}
