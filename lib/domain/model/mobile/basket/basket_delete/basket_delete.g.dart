// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_delete.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasketDeleteImpl _$$BasketDeleteImplFromJson(Map<String, dynamic> json) =>
    _$BasketDeleteImpl(
      status: json['status'] as bool,
      message: Message.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BasketDeleteImplToJson(_$BasketDeleteImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      prod_id: (json['prod_id'] as List<dynamic>)
          .map((e) => ProdId.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'prod_id': instance.prod_id,
    };

_$ProdIdImpl _$$ProdIdImplFromJson(Map<String, dynamic> json) => _$ProdIdImpl(
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$$ProdIdImplToJson(_$ProdIdImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
