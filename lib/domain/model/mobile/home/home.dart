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
        List<BannerModel>? banners,
        List<MobileDashBoard>? product,
    }) = _MobileHomeData;

    factory MobileHomeData.fromJson(Map<String, dynamic> json) => _$MobileHomeDataFromJson(json);
}

// @freezed
// class MobileBanners with _$MobileBanners {
//     const factory MobileBanners({
//         int? top_id,
//         String? name,
//         List<BannerModel>? banners,
//     }) = _MobileBanners;

//     factory MobileBanners.fromJson(Map<String, dynamic> json) => _$MobileBannersFromJson(json);
// }

@freezed
class BannerModel with _$BannerModel {
    const factory BannerModel({
        int? id,
        String? banner,
        String? alternative_text,
    }) = _BannerModel;

    factory BannerModel.fromJson(Map<String, dynamic> json) => _$BannerModelFromJson(json);
}

@freezed
class MobileDashBoard with _$MobileDashBoard {
    const factory MobileDashBoard({
        int? top_id,
        String? name,
        List<MobileProduct>? products,
    }) = _MobileDashBoard;

    factory MobileDashBoard.fromJson(Map<String, dynamic> json) => _$MobileDashBoardFromJson(json);
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
        int? price_to_pay,
    }) = _MobileProduct;

    factory MobileProduct.fromJson(Map<String, dynamic> json) => _$MobileProductFromJson(json);
}





@freezed
class MobileHomeProducts with _$MobileHomeProducts {
    const factory MobileHomeProducts({
        bool? status,
        Result? result,
    }) = _MobileHomeProducts;

    factory MobileHomeProducts.fromJson(Map<String, dynamic> json) => _$MobileHomeProductsFromJson(json);
}

@freezed
class Result with _$Result {
    const factory Result({
        List<Banner>? banners,
        List<Product>? product,
        List<Banner>? bottomBanners,
        List<Empty>? empty,
    }) = _Result;

    factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Banner with _$Banner {
    const factory Banner({
        int? id,
        String? banner,
        String? alternativeText,
    }) = _Banner;

    factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);
}

@freezed
class Empty with _$Empty {
    const factory Empty({
        int? id,
        String? name,
        String? status,
        int? discount,
        String? price,
        String? image,
        String? productType,
        double? priceToPay,
    }) = _Empty;

    factory Empty.fromJson(Map<String, dynamic> json) => _$EmptyFromJson(json);
}

@freezed
class Product with _$Product {
    const factory Product({
        int? topId,
        String? name,
        List<Empty>? products,
    }) = _Product;

    factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
