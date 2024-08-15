import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_products.freezed.dart';
part 'basket_products.g.dart';

@freezed
class BasketProducts with _$BasketProducts {
  const factory BasketProducts({
    bool? status,
    List<Result>? result,
    double? total_payment,
    int? total_quantity,
  }) = _BasketProducts;

  factory BasketProducts.fromJson(Map<String, dynamic> json) =>
      _$BasketProductsFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? id,
    int? product_id,
    String? name,
    int? discount,
    int? main_price,
    int? click_quantity,
    int? warehouse_product_quantity,
    double? price_to_pay,
    String? image,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
