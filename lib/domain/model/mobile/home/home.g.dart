// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MobileHomeProductsImpl _$$MobileHomeProductsImplFromJson(
        Map<String, dynamic> json) =>
    _$MobileHomeProductsImpl(
      status: json['status'] as bool?,
      result: json['result'] == null
          ? null
          : MobileHomeData.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MobileHomeProductsImplToJson(
        _$MobileHomeProductsImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'result': instance.result,
    };

_$MobileHomeDataImpl _$$MobileHomeDataImplFromJson(Map<String, dynamic> json) =>
    _$MobileHomeDataImpl(
      topBanner: (json['topBanner'] as List<dynamic>?)
          ?.map((e) => HomeBanner.fromJson(e as Map<String, dynamic>))
          .toList(),
      topProduct: (json['topProduct'] as List<dynamic>?)
          ?.map((e) => TopProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      bottomBanner: (json['bottomBanner'] as List<dynamic>?)
          ?.map((e) => HomeBanner.fromJson(e as Map<String, dynamic>))
          .toList(),
      bottomProduct: (json['bottomProduct'] as List<dynamic>?)
          ?.map((e) => TopProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MobileHomeDataImplToJson(
        _$MobileHomeDataImpl instance) =>
    <String, dynamic>{
      'topBanner': instance.topBanner,
      'topProduct': instance.topProduct,
      'bottomBanner': instance.bottomBanner,
      'bottomProduct': instance.bottomProduct,
    };

_$HomeBannerImpl _$$HomeBannerImplFromJson(Map<String, dynamic> json) =>
    _$HomeBannerImpl(
      id: (json['id'] as num?)?.toInt(),
      banner: json['banner'] as String?,
      alternativeText: json['alternativeText'] as String?,
    );

Map<String, dynamic> _$$HomeBannerImplToJson(_$HomeBannerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'banner': instance.banner,
      'alternativeText': instance.alternativeText,
    };

_$TopProductImpl _$$TopProductImplFromJson(Map<String, dynamic> json) =>
    _$TopProductImpl(
      top_d: (json['top_d'] as num?)?.toInt(),
      name: json['name'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => MobileProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopProductImplToJson(_$TopProductImpl instance) =>
    <String, dynamic>{
      'top_d': instance.top_d,
      'name': instance.name,
      'products': instance.products,
    };

_$MobileProductImpl _$$MobileProductImplFromJson(Map<String, dynamic> json) =>
    _$MobileProductImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      status: json['status'] as String?,
      discount: (json['discount'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toInt(),
      image: json['image'] as String?,
      product_type: json['product_type'] as String?,
      price_to_pay: (json['price_to_pay'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$MobileProductImplToJson(_$MobileProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'discount': instance.discount,
      'price': instance.price,
      'image': instance.image,
      'product_type': instance.product_type,
      'price_to_pay': instance.price_to_pay,
    };
