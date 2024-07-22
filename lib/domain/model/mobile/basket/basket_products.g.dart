// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasketProductsImpl _$$BasketProductsImplFromJson(Map<String, dynamic> json) =>
    _$BasketProductsImpl(
      status: json['status'] as bool?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      total_payment: (json['total_payment'] as num?)?.toDouble(),
      total_quantity: (json['total_quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BasketProductsImplToJson(
        _$BasketProductsImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'result': instance.result,
      'total_payment': instance.total_payment,
      'total_quantity': instance.total_quantity,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      id: (json['id'] as num?)?.toInt(),
      product_id: (json['product_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      discount: (json['discount'] as num?)?.toInt(),
      main_price: (json['main_price'] as num?)?.toInt(),
      click_quantity: (json['click_quantity'] as num?)?.toInt(),
      warehouse_product_quantity:
          (json['warehouse_product_quantity'] as num?)?.toInt(),
      price_to_pay: (json['price_to_pay'] as num?)?.toDouble(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.product_id,
      'name': instance.name,
      'discount': instance.discount,
      'main_price': instance.main_price,
      'click_quantity': instance.click_quantity,
      'warehouse_product_quantity': instance.warehouse_product_quantity,
      'price_to_pay': instance.price_to_pay,
      'image': instance.image,
    };
