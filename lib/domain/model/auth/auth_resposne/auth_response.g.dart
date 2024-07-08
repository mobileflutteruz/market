// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthResponseImpl _$$AuthResponseImplFromJson(Map<String, dynamic> json) =>
    _$AuthResponseImpl(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      user_d: (json['user_d'] as num?)?.toInt(),
      user_name: json['user_name'] as String?,
      token: json['token'] as String?,
      token_type: json['token_type'] as String?,
    );

Map<String, dynamic> _$$AuthResponseImplToJson(_$AuthResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'user_d': instance.user_d,
      'user_name': instance.user_name,
      'token': instance.token,
      'token_type': instance.token_type,
    };
