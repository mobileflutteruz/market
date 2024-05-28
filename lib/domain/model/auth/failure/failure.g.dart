// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FailureResponseImpl _$$FailureResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FailureResponseImpl(
      status: json['status'] as bool,
      errors: (json['0'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
    );

Map<String, dynamic> _$$FailureResponseImplToJson(
        _$FailureResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      '0': instance.errors,
    };
