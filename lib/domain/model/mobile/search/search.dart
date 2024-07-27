import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karmango/domain/model/search/search_product.dart';

part 'search.freezed.dart';
part 'search.g.dart';


@freezed
class SearchProductsData with _$SearchProductsData {
  const factory SearchProductsData({
    required bool success,
    required int status,
    required List<SearchProduct> data,
  }) = _SearchProductsData;

  factory SearchProductsData.fromJson(Map<String, dynamic> json) => _$SearchProductsDataFromJson(json);
} 