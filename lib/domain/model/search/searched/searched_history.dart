import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'searched_history.freezed.dart';
part 'searched_history.g.dart';

@freezed
class SearchedHistory with _$SearchedHistory {
  const factory SearchedHistory({
    bool? status,
    Result? result,
  }) = _SearchedHistory;

  factory SearchedHistory.fromJson(Map<String, dynamic> json) =>
      _$SearchedHistoryFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    List<SearchHistory>? search_history,
    List<TopSearch>? top_search,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class SearchHistory with _$SearchHistory {
  const factory SearchHistory({
    int? id,
    String? word,
  }) = _SearchHistory;

  factory SearchHistory.fromJson(Map<String, dynamic> json) =>
      _$SearchHistoryFromJson(json);
}

@freezed
class TopSearch with _$TopSearch {
  const factory TopSearch({
    String? word,
  }) = _TopSearch;

  factory TopSearch.fromJson(Map<String, dynamic> json) =>
      _$TopSearchFromJson(json);
}
