// favourite
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'favourite.freezed.dart';
part 'favourite.g.dart';

@freezed
class Favourite with _$Favourite {
    const factory Favourite({
        bool? status,
        List<Result>? result,
    }) = _Favourite;

    factory Favourite.fromJson(Map<String, dynamic> json) => _$FavouriteFromJson(json);
}

@freezed
class Result with _$Result {
    const factory Result({
        int? id,
        String? name_uz,
        String? name_ru,
        String? name_en,
        String? status,
        int? discount,
        int? price,
        String? image,
        int? price_to_pay,
    }) = _Result;

    factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
