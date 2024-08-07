// favourite
import 'package:freezed_annotation/freezed_annotation.dart';

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
        int? product_id,
        String? name,
        String? status,
        int? discount,
        int? price,
        String? image,
        int? price_to_pay,
    }) = _Result;

    factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
