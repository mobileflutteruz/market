// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenResponseImpl _$$TokenResponseImplFromJson(Map<String, dynamic> json) =>
    _$TokenResponseImpl(
      status: json['status'] as bool,
      accessToken: json['accessToken'] as String,
      tokenType: json['tokenType'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$TokenResponseImplToJson(_$TokenResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'accessToken': instance.accessToken,
      'tokenType': instance.tokenType,
      'message': instance.message,
    };
