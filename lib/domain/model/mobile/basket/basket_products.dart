import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_products.freezed.dart';
part 'basket_products.g.dart';

@freezed
class CartResponse with _$CartResponse {
  const factory CartResponse({
    bool? status,
    List<ProductData>? result,
    double? total_payment,
    int? total_quantity,
  }) = _CartResponse;

  factory CartResponse.fromJson(Map<String, dynamic> json) =>
      _$CartResponseFromJson(json);
}

@freezed
class ProductData with _$ProductData {
  const factory ProductData({
    int? id,
    int? product_id,
    String? name,
    int? discount,
    int? main_price,
    int? click_quantity,
    int? warehouse_product_quantity,
    double? price_to_pay,
    String? image,
  }) = _ProductData;

  factory ProductData.fromJson(Map<String, dynamic> json) => _$ProductDataFromJson(json);
}
