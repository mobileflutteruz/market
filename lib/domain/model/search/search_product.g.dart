// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchProductImpl _$$SearchProductImplFromJson(Map<String, dynamic> json) =>
    _$SearchProductImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'],
      details_of_product: json['details_of_product'],
      price: (json['price'] as num?)?.toInt(),
      quantity: json['quantity'],
      quantity_rest: json['quantity_rest'],
      discount: (json['discount'] as num?)?.toInt(),
      image: json['image'] as String?,
      status: json['status'] as String?,
      product_type: json['product_type'] as String?,
      category_id: (json['category_id'] as num?)?.toInt(),
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );

Map<String, dynamic> _$$SearchProductImplToJson(_$SearchProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'details_of_product': instance.details_of_product,
      'price': instance.price,
      'quantity': instance.quantity,
      'quantity_rest': instance.quantity_rest,
      'discount': instance.discount,
      'image': instance.image,
      'status': instance.status,
      'product_type': instance.product_type,
      'category_id': instance.category_id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
