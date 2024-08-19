import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'district.freezed.dart';
part 'district.g.dart';

@freezed
class DistrictModel with _$DistrictModel {
    const factory DistrictModel({
        int? id,
        String? name,
        DateTime? created_at,
        dynamic updated_at,
        List<District>? districts,
    }) = _DistrictModel;

    factory DistrictModel.fromJson(Map<String, dynamic> json) => _$DistrictModelFromJson(json);
}

@freezed
class District with _$District {
    const factory District({
        int? id,
        int? region_id,
        String? name,
        DateTime? created_at,
        dynamic updated_at,
    }) = _District;

    factory District.fromJson(Map<String, dynamic> json) => _$DistrictFromJson(json);
}
