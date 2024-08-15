import 'package:freezed_annotation/freezed_annotation.dart';

part 'district.freezed.dart';
part 'district.g.dart';

@freezed
class District with _$District {
  const factory District({
    required int id,
    required String name,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    required List<Districts> districts,
  }) = _District;

  factory District.fromJson(Map<String, dynamic> json) =>
      _$DistrictFromJson(json);
}

@freezed
class Districts with _$Districts {
  const factory Districts({
    required int id,
    @JsonKey(name: 'region_id') required int regionId,
    required String name,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Districts;

  factory Districts.fromJson(Map<String, dynamic> json) =>
      _$DistrictsFromJson(json);
}
