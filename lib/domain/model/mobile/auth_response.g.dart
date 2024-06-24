// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthResponseImpl _$$AuthResponseImplFromJson(Map<String, dynamic> json) =>
    _$AuthResponseImpl(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      user_id: (json['user_id'] as num?)?.toInt(),
      user_name: json['user_name'] as String?,
      access_token: json['access_token'] as String?,
      token_type: json['token_type'] as String?,
    );

Map<String, dynamic> _$$AuthResponseImplToJson(_$AuthResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'user_id': instance.user_id,
      'user_name': instance.user_name,
      'access_token': instance.access_token,
      'token_type': instance.token_type,
    };
