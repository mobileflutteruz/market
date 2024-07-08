// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GuestModelImpl _$$GuestModelImplFromJson(Map<String, dynamic> json) =>
    _$GuestModelImpl(
      status: json['status'] as bool?,
      token: json['token'] as String?,
      token_type: json['token_type'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GuestModelImplToJson(_$GuestModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'token': instance.token,
      'token_type': instance.token_type,
      'user': instance.user,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      name: json['name'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
    };
