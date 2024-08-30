// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangePasswordModelImpl _$$ChangePasswordModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePasswordModelImpl(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      user_id: (json['user_id'] as num?)?.toInt(),
      user_name: json['user_name'] as String?,
      token: json['token'] as String?,
      token_type: json['token_type'] as String?,
    );

Map<String, dynamic> _$$ChangePasswordModelImplToJson(
        _$ChangePasswordModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'user_id': instance.user_id,
      'user_name': instance.user_name,
      'token': instance.token,
      'token_type': instance.token_type,
    };
