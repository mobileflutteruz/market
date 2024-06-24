import 'package:freezed_annotation/freezed_annotation.dart';

part 'home.freezed.dart';
part 'home.g.dart';

@freezed
class MobileHomeProducts with _$MobileHomeProducts {
  const factory MobileHomeProducts({
    required bool status,
    required MobileHomeData result,
  }) = _MobileHomeProducts;

  factory MobileHomeProducts.fromJson(Map<String, dynamic> json) => _$MobileHomeProductsFromJson(json);
}

@freezed
class  MobileHomeData with _$MobileHomeData {
  const factory MobileHomeData({
    @JsonKey(name: 'top_banner') required List<HomeBanner> topBanner,
    @JsonKey(name: 'top_product') required List<TopProduct> topProduct,
    @JsonKey(name: 'bottom_banner') required List<HomeBanner> bottomBanner,
    @JsonKey(name: 'bottom_product') required List<TopProduct> bottomProduct,
  }) = _MobileHomeData;

  factory MobileHomeData.fromJson(Map<String, dynamic> json) => _$MobileHomeDataFromJson(json);
}

@freezed
class  HomeBanner with _$HomeBanner {
  const factory HomeBanner({
    required int id,
    required String banner,
    @JsonKey(name: 'alternative_text') required String alternativeText,
  }) = _HomeBanner;

  factory HomeBanner.fromJson(Map<String, dynamic> json) => _$HomeBannerFromJson(json);
}

@freezed
class TopProduct with _$TopProduct {
  const factory TopProduct({
    @JsonKey(name: 'top_id') required int topId,
    required String name,
    required List<MobileProduct> products,
  }) = _TopProduct;

  factory TopProduct.fromJson(Map<String, dynamic> json) => _$TopProductFromJson(json);
}

@freezed
class MobileProduct with _$MobileProduct {
  const factory MobileProduct({
    required int id,
    required String name,
    required String status,
    required int discount,
    required double price,
    required String image,
    @JsonKey(name: 'product_type') required String productType,
    @JsonKey(name: 'price_to_pay') required double priceToPay,
  }) = _MobileProduct;

  factory MobileProduct.fromJson(Map<String, dynamic> json) => _$MobileProductFromJson(json);
}
