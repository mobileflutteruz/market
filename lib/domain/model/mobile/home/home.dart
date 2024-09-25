import 'package:freezed_annotation/freezed_annotation.dart';

part 'home.freezed.dart';
part 'home.g.dart';

@freezed
class MobileHomeProducts with _$MobileHomeProducts {
  const factory MobileHomeProducts({
    bool? status,
    MobileHomeData? result,
  }) = _MobileHomeProducts;

  factory MobileHomeProducts.fromJson(Map<String, dynamic> json) =>
      _$MobileHomeProductsFromJson(json);
}

@freezed
class MobileHomeData with _$MobileHomeData {
  const factory MobileHomeData({
    List<HomeBanner>? top_banner,
    List<TopProduct>? top_product,
    List<HomeBanner>? bottom_banner,
    List<TopProduct>? bottom_product,
  }) = _MobileHomeData;

  factory MobileHomeData.fromJson(Map<String, dynamic> json) =>
      _$MobileHomeDataFromJson(json);
}

@freezed
class HomeBanner with _$HomeBanner {
  const factory HomeBanner({
    int? id,
    String? banner,
    String? alternative_text,
  }) = _HomeBanner;

  factory HomeBanner.fromJson(Map<String, dynamic> json) =>
      _$HomeBannerFromJson(json);
}

@freezed
class TopProduct with _$TopProduct {
  const factory TopProduct({
    int? top_id,
    String? name,
    List<MobileProduct>? products,
  }) = _TopProduct;

  factory TopProduct.fromJson(Map<String, dynamic> json) =>
      _$TopProductFromJson(json);
}

@freezed
class MobileProduct with _$MobileProduct {
  const factory MobileProduct({
    int? product_id,
    String? name,
    String? status,
    int? discount,
    int? price,
    String? image,
    String? product_type,
    double? price_to_pay,
  }) = _MobileProduct;

  factory MobileProduct.fromJson(Map<String, dynamic> json) =>
      _$MobileProductFromJson(json);
}
