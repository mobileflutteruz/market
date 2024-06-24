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
      banners: (json['banners'] as List<dynamic>?)
          ?.map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      product: (json['product'] as List<dynamic>?)
          ?.map((e) => MobileDashBoard.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MobileHomeDataImplToJson(
        _$MobileHomeDataImpl instance) =>
    <String, dynamic>{
      'banners': instance.banners,
      'product': instance.product,
    };

_$BannerModelImpl _$$BannerModelImplFromJson(Map<String, dynamic> json) =>
    _$BannerModelImpl(
      id: (json['id'] as num?)?.toInt(),
      banner: json['banner'] as String?,
      alternative_text: json['alternative_text'] as String?,
    );

Map<String, dynamic> _$$BannerModelImplToJson(_$BannerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'banner': instance.banner,
      'alternative_text': instance.alternative_text,
    };

_$MobileDashBoardImpl _$$MobileDashBoardImplFromJson(
        Map<String, dynamic> json) =>
    _$MobileDashBoardImpl(
      top_id: (json['top_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => MobileProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MobileDashBoardImplToJson(
        _$MobileDashBoardImpl instance) =>
    <String, dynamic>{
      'top_id': instance.top_id,
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
      price_to_pay: (json['price_to_pay'] as num?)?.toInt(),
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
