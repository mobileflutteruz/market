// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDataModelImpl _$$ProductDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDataModelImpl(
      status: json['status'] as bool?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductDataModelImplToJson(
        _$ProductDataModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      similar_products: (json['similar_products'] as List<dynamic>?)
          ?.map((e) => SimilarProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'product': instance.product,
      'similar_products': instance.similar_products,
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
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      rest_products: (json['rest_products'] as num?)?.toInt(),
      price_to_pay: (json['price_to_pay'] as num?)?.toInt(),
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
      'updated_at': instance.updated_at?.toIso8601String(),
      'rest_products': instance.rest_products,
      'price_to_pay': instance.price_to_pay,
    };

_$SimilarProductImpl _$$SimilarProductImplFromJson(Map<String, dynamic> json) =>
    _$SimilarProductImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      status: json['status'] as String?,
      discount: (json['discount'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toInt(),
      image: json['image'] as String?,
      product_type: json['product_type'] as String?,
      price_to_pay: (json['price_to_pay'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SimilarProductImplToJson(
        _$SimilarProductImpl instance) =>
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
