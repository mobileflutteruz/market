// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searched_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchedHistoryImpl _$$SearchedHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchedHistoryImpl(
      status: json['status'] as bool?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchedHistoryImplToJson(
        _$SearchedHistoryImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      search_history: (json['search_history'] as List<dynamic>?)
          ?.map((e) => SearchHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
      top_search: (json['top_search'] as List<dynamic>?)
          ?.map((e) => TopSearch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'search_history': instance.search_history,
      'top_search': instance.top_search,
    };

_$SearchHistoryImpl _$$SearchHistoryImplFromJson(Map<String, dynamic> json) =>
    _$SearchHistoryImpl(
      id: (json['id'] as num?)?.toInt(),
      word: json['word'] as String?,
    );

Map<String, dynamic> _$$SearchHistoryImplToJson(_$SearchHistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'word': instance.word,
    };

_$TopSearchImpl _$$TopSearchImplFromJson(Map<String, dynamic> json) =>
    _$TopSearchImpl(
      word: json['word'] as String?,
    );

Map<String, dynamic> _$$TopSearchImplToJson(_$TopSearchImpl instance) =>
    <String, dynamic>{
      'word': instance.word,
    };
