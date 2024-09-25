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
      top_banner: (json['top_banner'] as List<dynamic>?)
          ?.map((e) => HomeBanner.fromJson(e as Map<String, dynamic>))
          .toList(),
      top_product: (json['top_product'] as List<dynamic>?)
          ?.map((e) => TopProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      bottom_banner: (json['bottom_banner'] as List<dynamic>?)
          ?.map((e) => HomeBanner.fromJson(e as Map<String, dynamic>))
          .toList(),
      bottom_product: (json['bottom_product'] as List<dynamic>?)
          ?.map((e) => TopProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MobileHomeDataImplToJson(
        _$MobileHomeDataImpl instance) =>
    <String, dynamic>{
      'top_banner': instance.top_banner,
      'top_product': instance.top_product,
      'bottom_banner': instance.bottom_banner,
      'bottom_product': instance.bottom_product,
    };

_$HomeBannerImpl _$$HomeBannerImplFromJson(Map<String, dynamic> json) =>
    _$HomeBannerImpl(
      id: (json['id'] as num?)?.toInt(),
      banner: json['banner'] as String?,
      alternative_text: json['alternative_text'] as String?,
    );

Map<String, dynamic> _$$HomeBannerImplToJson(_$HomeBannerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'banner': instance.banner,
      'alternative_text': instance.alternative_text,
    };

_$TopProductImpl _$$TopProductImplFromJson(Map<String, dynamic> json) =>
    _$TopProductImpl(
      top_id: (json['top_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => MobileProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopProductImplToJson(_$TopProductImpl instance) =>
    <String, dynamic>{
      'top_id': instance.top_id,
      'name': instance.name,
      'products': instance.products,
    };

_$MobileProductImpl _$$MobileProductImplFromJson(Map<String, dynamic> json) =>
    _$MobileProductImpl(
      product_id: (json['product_id'] as num?)?.toInt(),
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
      'product_id': instance.product_id,
      'name': instance.name,
      'status': instance.status,
      'discount': instance.discount,
      'price': instance.price,
      'image': instance.image,
      'product_type': instance.product_type,
      'price_to_pay': instance.price_to_pay,
    };
