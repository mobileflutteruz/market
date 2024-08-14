// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      user_id: (json['user_id'] as num?)?.toInt(),
      user_name: json['user_name'] as String?,
      user_status: json['user_status'] as String?,
      status: json['status'] as bool?,
      message: json['message'] as String?,
      access_token: json['access_token'] as String?,
      refresh_token: json['refresh_token'] as String?,
      token_type: json['token_type'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'user_name': instance.user_name,
      'user_status': instance.user_status,
      'status': instance.status,
      'message': instance.message,
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
      'token_type': instance.token_type,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      token: json['token'] as String?,
      photo: json['photo'],
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'token': instance.token,
      'photo': instance.photo,
    };

_$UserInfossImpl _$$UserInfossImplFromJson(Map<String, dynamic> json) =>
    _$UserInfossImpl(
      status: json['status'] as bool?,
      data: json['data'] == null
          ? null
          : User.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserInfossImplToJson(_$UserInfossImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$RoleImpl _$$RoleImplFromJson(Map<String, dynamic> json) => _$RoleImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$RoleImplToJson(_$RoleImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$ResendActivationImpl _$$ResendActivationImplFromJson(
        Map<String, dynamic> json) =>
    _$ResendActivationImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$ResendActivationImplToJson(
        _$ResendActivationImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
