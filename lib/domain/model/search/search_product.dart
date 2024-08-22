import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_product.freezed.dart';
part 'search_product.g.dart';

@freezed
class SearchProduct with _$SearchProduct {
  const factory SearchProduct({
     int? id,
        String? name,
        dynamic description,
        dynamic details_of_product,
        int? price,
        dynamic quantity,
        dynamic quantity_rest,
        int? discount,
        String? image,
        String? status,
        String? product_type,
        int? category_id,
        dynamic created_at,
        dynamic updated_at,
  }) = _SearchProduct;

  factory SearchProduct.fromJson(Map<String, dynamic> json) =>
      _$SearchProductFromJson(json);
}
