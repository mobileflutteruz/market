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
      name_uz: json['name_uz'] as String?,
      name_ru: json['name_ru'] as String?,
      name_en: json['name_en'] as String?,
      description_uz: json['description_uz'] as String?,
      description_ru: json['description_ru'] as String?,
      description_en: json['description_en'] as String?,
      details_of_product_uz: json['details_of_product_uz'],
      details_of_product_ru: json['details_of_product_ru'],
      details_of_product_en: json['details_of_product_en'],
      price: (json['price'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      quantity_rest: json['quantity_rest'],
      discount: (json['discount'] as num?)?.toInt(),
      image: json['image'] as String?,
      status: json['status'] as String?,
      product_type: json['product_type'] as String?,
      category_id: (json['category_id'] as num?)?.toInt(),
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'],
      rest_products: (json['rest_products'] as num?)?.toInt(),
      price_to_pay: (json['price_to_pay'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_uz': instance.name_uz,
      'name_ru': instance.name_ru,
      'name_en': instance.name_en,
      'description_uz': instance.description_uz,
      'description_ru': instance.description_ru,
      'description_en': instance.description_en,
      'details_of_product_uz': instance.details_of_product_uz,
      'details_of_product_ru': instance.details_of_product_ru,
      'details_of_product_en': instance.details_of_product_en,
      'price': instance.price,
      'quantity': instance.quantity,
      'quantity_rest': instance.quantity_rest,
      'discount': instance.discount,
      'image': instance.image,
      'status': instance.status,
      'product_type': instance.product_type,
      'category_id': instance.category_id,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at,
      'rest_products': instance.rest_products,
      'price_to_pay': instance.price_to_pay,
    };

_$SimilarProductImpl _$$SimilarProductImplFromJson(Map<String, dynamic> json) =>
    _$SimilarProductImpl(
      id: (json['id'] as num?)?.toInt(),
      nameUz: json['nameUz'] as String?,
      nameRu: json['nameRu'] as String?,
      nameEn: json['nameEn'] as String?,
      status: json['status'] as String?,
      discount: (json['discount'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toInt(),
      image: json['image'] as String?,
      priceToPay: (json['priceToPay'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SimilarProductImplToJson(
        _$SimilarProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameUz': instance.nameUz,
      'nameRu': instance.nameRu,
      'nameEn': instance.nameEn,
      'status': instance.status,
      'discount': instance.discount,
      'price': instance.price,
      'image': instance.image,
      'priceToPay': instance.priceToPay,
    };
