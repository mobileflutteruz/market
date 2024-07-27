// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchProductsDataImpl _$$SearchProductsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchProductsDataImpl(
      success: json['success'] as bool,
      status: (json['status'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => SearchProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchProductsDataImplToJson(
        _$SearchProductsDataImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'data': instance.data,
    };
