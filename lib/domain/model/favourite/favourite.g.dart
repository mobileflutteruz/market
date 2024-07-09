// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavouriteImpl _$$FavouriteImplFromJson(Map<String, dynamic> json) =>
    _$FavouriteImpl(
      status: json['status'] as bool?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FavouriteImplToJson(_$FavouriteImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      id: (json['id'] as num?)?.toInt(),
      product_id: (json['product_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      status: json['status'] as String?,
      discount: (json['discount'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toInt(),
      image: json['image'] as String?,
      price_to_pay: (json['price_to_pay'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.product_id,
      'name': instance.name,
      'status': instance.status,
      'discount': instance.discount,
      'price': instance.price,
      'image': instance.image,
      'price_to_pay': instance.price_to_pay,
    };
