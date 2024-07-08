// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'],
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at,
      'products': instance.products,
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'],
      details_of_product: json['details_of_product'],
      price: (json['price'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      quantity_rest: (json['quantity_rest'] as num?)?.toInt(),
      discount: (json['discount'] as num?)?.toInt(),
      image: json['image'] as String?,
      status: json['status'] as String?,
      product_type: json['product_type'] as String?,
      category_id: (json['category_id'] as num?)?.toInt(),
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
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
