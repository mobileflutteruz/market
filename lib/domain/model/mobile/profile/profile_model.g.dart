// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResponseImpl _$$UserResponseImplFromJson(Map<String, dynamic> json) =>
    _$UserResponseImpl(
      status: json['status'] as bool,
      result: UserResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserResponseImplToJson(_$UserResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'result': instance.result,
    };

_$UserResultImpl _$$UserResultImplFromJson(Map<String, dynamic> json) =>
    _$UserResultImpl(
      user_id: (json['user_id'] as num).toInt(),
      name: json['name'] as String,
      phone: json['phone'] as String,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$UserResultImplToJson(_$UserResultImpl instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'name': instance.name,
      'phone': instance.phone,
      'image': instance.image,
    };
