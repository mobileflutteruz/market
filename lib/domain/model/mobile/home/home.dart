import 'package:freezed_annotation/freezed_annotation.dart';

part 'home.freezed.dart';
part 'home.g.dart';

@freezed
class MobileHomeProducts with _$MobileHomeProducts {
    const factory MobileHomeProducts({
        bool? status,
        MobileHomeData? result,
    }) = _MobileHomeProducts;

    factory MobileHomeProducts.fromJson(Map<String, dynamic> json) => _$MobileHomeProductsFromJson(json);
}

@freezed
class MobileHomeData with _$MobileHomeData {
    const factory MobileHomeData({
        List<HomeBanner>? topBanner,
        List<TopProduct>? topProduct,
        List<HomeBanner>? bottomBanner,
        List<TopProduct>? bottomProduct,
    }) = _MobileHomeData;

    factory MobileHomeData.fromJson(Map<String, dynamic> json) => _$MobileHomeDataFromJson(json);
}

@freezed
class HomeBanner with _$HomeBanner {
    const factory HomeBanner({
        int? id,
        String? banner,
        String? alternativeText,
    }) = _HomeBanner;

    factory HomeBanner.fromJson(Map<String, dynamic> json) => _$HomeBannerFromJson(json);
}

@freezed
class TopProduct with _$TopProduct {
    const factory TopProduct({
        int? top_d,
        String? name,
        List<MobileProduct>? products,
    }) = _TopProduct;

    factory TopProduct.fromJson(Map<String, dynamic> json) => _$TopProductFromJson(json);
}

@freezed
class MobileProduct with _$MobileProduct {
    const factory MobileProduct({
        int? id,
        String? name,
        String? status,
        int? discount,
        int? price,
        String? image,
        String? product_type,
        double? price_to_pay,
    }) = _MobileProduct;

    factory MobileProduct.fromJson(Map<String, dynamic> json) => _$MobileProductFromJson(json);
}
