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
    List<MobileBanners>? banner,
    List<MobileDashBoard>? product,
  }) = _MobileHomeData;

  factory MobileHomeData.fromJson(Map<String, dynamic> json) => _$MobileHomeDataFromJson(json);
}

@freezed
class MobileBanners with _$MobileBanners {
  const factory MobileBanners({
    int? top_id,
    String? name,
    List<BannerModel>? banners,
  }) = _MobileBanners;

  factory MobileBanners.fromJson(Map<String, dynamic> json) => _$MobileBannersFromJson(json);
}

@freezed
class BannerModel with _$BannerModel {
  const factory BannerModel({
    int? id,
    String? image,
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

  factory MobileDashBoard.fromJson(Map<String, Object?> json) =>
      _$MobileDashBoardFromJson(json);
}


@freezed
class MobileProduct with _$MobileProduct {
  const factory MobileProduct({
    int? id,
    String? name_uz,
    String? name_ru,
    String? name_en,
    String? status,
    double? discount,
    int? price,
    String? image,
    int? price_to_pay,
  }) = _MobileProduct;

  factory MobileProduct.fromJson(Map<String, dynamic> json) => _$MobileProductFromJson(json);
}
