import 'package:freezed_annotation/freezed_annotation.dart';
part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
    const factory CategoryModel({
        int? current_page,
        List<Datum>? data,
        String? first_page_url,
        int? from,
        int? last_page,
        String? last_page_url,
        List<Link>? links,
        dynamic next_page_url,
        String? path,
        int? per_page,
        dynamic prev_page_url,
        int? to,
        int? total,
    }) = _CategoryModel;

    factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);
}

@freezed
class Datum with _$Datum {
    const factory Datum({
        int? id,
        String? image,
        String? name_uz,
        String? name_ru,
        String? name_en,
        DateTime? created_at,
        dynamic updated_at,
    }) = _Datum;

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class Link with _$Link {
    const factory Link({
        String? url,
        String? label,
        bool? active,
    }) = _Link;

    factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}
