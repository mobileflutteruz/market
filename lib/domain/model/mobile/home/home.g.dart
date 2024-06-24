// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MobileHomeProductsImpl _$$MobileHomeProductsImplFromJson(
        Map<String, dynamic> json) =>
    _$MobileHomeProductsImpl(
      status: json['status'] as bool,
      result: MobileHomeData.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MobileHomeProductsImplToJson(
        _$MobileHomeProductsImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'result': instance.result,
    };

_$MobileHomeDataImpl _$$MobileHomeDataImplFromJson(Map<String, dynamic> json) =>
    _$MobileHomeDataImpl(
      topBanner: (json['top_banner'] as List<dynamic>)
          .map((e) => HomeBanner.fromJson(e as Map<String, dynamic>))
          .toList(),
      topProduct: (json['top_product'] as List<dynamic>)
          .map((e) => TopProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      bottomBanner: (json['bottom_banner'] as List<dynamic>)
          .map((e) => HomeBanner.fromJson(e as Map<String, dynamic>))
          .toList(),
      bottomProduct: (json['bottom_product'] as List<dynamic>)
          .map((e) => TopProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MobileHomeDataImplToJson(
        _$MobileHomeDataImpl instance) =>
    <String, dynamic>{
      'top_banner': instance.topBanner,
      'top_product': instance.topProduct,
      'bottom_banner': instance.bottomBanner,
      'bottom_product': instance.bottomProduct,
    };

_$HomeBannerImpl _$$HomeBannerImplFromJson(Map<String, dynamic> json) =>
    _$HomeBannerImpl(
      id: (json['id'] as num).toInt(),
      banner: json['banner'] as String,
      alternativeText: json['alternative_text'] as String,
    );

Map<String, dynamic> _$$HomeBannerImplToJson(_$HomeBannerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'banner': instance.banner,
      'alternative_text': instance.alternativeText,
    };

_$TopProductImpl _$$TopProductImplFromJson(Map<String, dynamic> json) =>
    _$TopProductImpl(
      topId: (json['top_id'] as num).toInt(),
      name: json['name'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => MobileProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopProductImplToJson(_$TopProductImpl instance) =>
    <String, dynamic>{
      'top_id': instance.topId,
      'name': instance.name,
      'products': instance.products,
    };

_$MobileProductImpl _$$MobileProductImplFromJson(Map<String, dynamic> json) =>
    _$MobileProductImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      status: json['status'] as String,
      discount: (json['discount'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      image: json['image'] as String,
      productType: json['product_type'] as String,
      priceToPay: (json['price_to_pay'] as num).toDouble(),
    );

Map<String, dynamic> _$$MobileProductImplToJson(_$MobileProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'discount': instance.discount,
      'price': instance.price,
      'image': instance.image,
      'product_type': instance.productType,
      'price_to_pay': instance.priceToPay,
    };
