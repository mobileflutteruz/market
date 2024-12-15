// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_edit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileEditModelImpl _$$ProfileEditModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileEditModelImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      code: (json['code'] as num).toInt(),
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$ProfileEditModelImplToJson(
        _$ProfileEditModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'code': instance.code,
      'phone': instance.phone,
    };
