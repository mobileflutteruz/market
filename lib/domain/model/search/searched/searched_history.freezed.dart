// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'searched_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchedHistory _$SearchedHistoryFromJson(Map<String, dynamic> json) {
  return _SearchedHistory.fromJson(json);
}

/// @nodoc
mixin _$SearchedHistory {
  bool? get status => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchedHistoryCopyWith<SearchedHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchedHistoryCopyWith<$Res> {
  factory $SearchedHistoryCopyWith(
          SearchedHistory value, $Res Function(SearchedHistory) then) =
      _$SearchedHistoryCopyWithImpl<$Res, SearchedHistory>;
  @useResult
  $Res call({bool? status, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$SearchedHistoryCopyWithImpl<$Res, $Val extends SearchedHistory>
    implements $SearchedHistoryCopyWith<$Res> {
  _$SearchedHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchedHistoryImplCopyWith<$Res>
    implements $SearchedHistoryCopyWith<$Res> {
  factory _$$SearchedHistoryImplCopyWith(_$SearchedHistoryImpl value,
          $Res Function(_$SearchedHistoryImpl) then) =
      __$$SearchedHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$SearchedHistoryImplCopyWithImpl<$Res>
    extends _$SearchedHistoryCopyWithImpl<$Res, _$SearchedHistoryImpl>
    implements _$$SearchedHistoryImplCopyWith<$Res> {
  __$$SearchedHistoryImplCopyWithImpl(
      _$SearchedHistoryImpl _value, $Res Function(_$SearchedHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? result = freezed,
  }) {
    return _then(_$SearchedHistoryImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchedHistoryImpl implements _SearchedHistory {
  const _$SearchedHistoryImpl({this.status, this.result});

  factory _$SearchedHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchedHistoryImplFromJson(json);

  @override
  final bool? status;
  @override
  final Result? result;

  @override
  String toString() {
    return 'SearchedHistory(status: $status, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchedHistoryImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchedHistoryImplCopyWith<_$SearchedHistoryImpl> get copyWith =>
      __$$SearchedHistoryImplCopyWithImpl<_$SearchedHistoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchedHistoryImplToJson(
      this,
    );
  }
}

abstract class _SearchedHistory implements SearchedHistory {
  const factory _SearchedHistory({final bool? status, final Result? result}) =
      _$SearchedHistoryImpl;

  factory _SearchedHistory.fromJson(Map<String, dynamic> json) =
      _$SearchedHistoryImpl.fromJson;

  @override
  bool? get status;
  @override
  Result? get result;
  @override
  @JsonKey(ignore: true)
  _$$SearchedHistoryImplCopyWith<_$SearchedHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  List<SearchHistory>? get search_history => throw _privateConstructorUsedError;
  List<TopSearch>? get top_search => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({List<SearchHistory>? search_history, List<TopSearch>? top_search});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search_history = freezed,
    Object? top_search = freezed,
  }) {
    return _then(_value.copyWith(
      search_history: freezed == search_history
          ? _value.search_history
          : search_history // ignore: cast_nullable_to_non_nullable
              as List<SearchHistory>?,
      top_search: freezed == top_search
          ? _value.top_search
          : top_search // ignore: cast_nullable_to_non_nullable
              as List<TopSearch>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SearchHistory>? search_history, List<TopSearch>? top_search});
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search_history = freezed,
    Object? top_search = freezed,
  }) {
    return _then(_$ResultImpl(
      search_history: freezed == search_history
          ? _value._search_history
          : search_history // ignore: cast_nullable_to_non_nullable
              as List<SearchHistory>?,
      top_search: freezed == top_search
          ? _value._top_search
          : top_search // ignore: cast_nullable_to_non_nullable
              as List<TopSearch>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {final List<SearchHistory>? search_history,
      final List<TopSearch>? top_search})
      : _search_history = search_history,
        _top_search = top_search;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  final List<SearchHistory>? _search_history;
  @override
  List<SearchHistory>? get search_history {
    final value = _search_history;
    if (value == null) return null;
    if (_search_history is EqualUnmodifiableListView) return _search_history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TopSearch>? _top_search;
  @override
  List<TopSearch>? get top_search {
    final value = _top_search;
    if (value == null) return null;
    if (_top_search is EqualUnmodifiableListView) return _top_search;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(search_history: $search_history, top_search: $top_search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            const DeepCollectionEquality()
                .equals(other._search_history, _search_history) &&
            const DeepCollectionEquality()
                .equals(other._top_search, _top_search));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_search_history),
      const DeepCollectionEquality().hash(_top_search));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final List<SearchHistory>? search_history,
      final List<TopSearch>? top_search}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  List<SearchHistory>? get search_history;
  @override
  List<TopSearch>? get top_search;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchHistory _$SearchHistoryFromJson(Map<String, dynamic> json) {
  return _SearchHistory.fromJson(json);
}

/// @nodoc
mixin _$SearchHistory {
  int? get id => throw _privateConstructorUsedError;
  String? get word => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchHistoryCopyWith<SearchHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchHistoryCopyWith<$Res> {
  factory $SearchHistoryCopyWith(
          SearchHistory value, $Res Function(SearchHistory) then) =
      _$SearchHistoryCopyWithImpl<$Res, SearchHistory>;
  @useResult
  $Res call({int? id, String? word});
}

/// @nodoc
class _$SearchHistoryCopyWithImpl<$Res, $Val extends SearchHistory>
    implements $SearchHistoryCopyWith<$Res> {
  _$SearchHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? word = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      word: freezed == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchHistoryImplCopyWith<$Res>
    implements $SearchHistoryCopyWith<$Res> {
  factory _$$SearchHistoryImplCopyWith(
          _$SearchHistoryImpl value, $Res Function(_$SearchHistoryImpl) then) =
      __$$SearchHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? word});
}

/// @nodoc
class __$$SearchHistoryImplCopyWithImpl<$Res>
    extends _$SearchHistoryCopyWithImpl<$Res, _$SearchHistoryImpl>
    implements _$$SearchHistoryImplCopyWith<$Res> {
  __$$SearchHistoryImplCopyWithImpl(
      _$SearchHistoryImpl _value, $Res Function(_$SearchHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? word = freezed,
  }) {
    return _then(_$SearchHistoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      word: freezed == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchHistoryImpl implements _SearchHistory {
  const _$SearchHistoryImpl({this.id, this.word});

  factory _$SearchHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchHistoryImplFromJson(json);

  @override
  final int? id;
  @override
  final String? word;

  @override
  String toString() {
    return 'SearchHistory(id: $id, word: $word)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchHistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.word, word) || other.word == word));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, word);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchHistoryImplCopyWith<_$SearchHistoryImpl> get copyWith =>
      __$$SearchHistoryImplCopyWithImpl<_$SearchHistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchHistoryImplToJson(
      this,
    );
  }
}

abstract class _SearchHistory implements SearchHistory {
  const factory _SearchHistory({final int? id, final String? word}) =
      _$SearchHistoryImpl;

  factory _SearchHistory.fromJson(Map<String, dynamic> json) =
      _$SearchHistoryImpl.fromJson;

  @override
  int? get id;
  @override
  String? get word;
  @override
  @JsonKey(ignore: true)
  _$$SearchHistoryImplCopyWith<_$SearchHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopSearch _$TopSearchFromJson(Map<String, dynamic> json) {
  return _TopSearch.fromJson(json);
}

/// @nodoc
mixin _$TopSearch {
  String? get word => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopSearchCopyWith<TopSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopSearchCopyWith<$Res> {
  factory $TopSearchCopyWith(TopSearch value, $Res Function(TopSearch) then) =
      _$TopSearchCopyWithImpl<$Res, TopSearch>;
  @useResult
  $Res call({String? word});
}

/// @nodoc
class _$TopSearchCopyWithImpl<$Res, $Val extends TopSearch>
    implements $TopSearchCopyWith<$Res> {
  _$TopSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = freezed,
  }) {
    return _then(_value.copyWith(
      word: freezed == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopSearchImplCopyWith<$Res>
    implements $TopSearchCopyWith<$Res> {
  factory _$$TopSearchImplCopyWith(
          _$TopSearchImpl value, $Res Function(_$TopSearchImpl) then) =
      __$$TopSearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? word});
}

/// @nodoc
class __$$TopSearchImplCopyWithImpl<$Res>
    extends _$TopSearchCopyWithImpl<$Res, _$TopSearchImpl>
    implements _$$TopSearchImplCopyWith<$Res> {
  __$$TopSearchImplCopyWithImpl(
      _$TopSearchImpl _value, $Res Function(_$TopSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = freezed,
  }) {
    return _then(_$TopSearchImpl(
      word: freezed == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopSearchImpl implements _TopSearch {
  const _$TopSearchImpl({this.word});

  factory _$TopSearchImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopSearchImplFromJson(json);

  @override
  final String? word;

  @override
  String toString() {
    return 'TopSearch(word: $word)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopSearchImpl &&
            (identical(other.word, word) || other.word == word));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, word);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopSearchImplCopyWith<_$TopSearchImpl> get copyWith =>
      __$$TopSearchImplCopyWithImpl<_$TopSearchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopSearchImplToJson(
      this,
    );
  }
}

abstract class _TopSearch implements TopSearch {
  const factory _TopSearch({final String? word}) = _$TopSearchImpl;

  factory _TopSearch.fromJson(Map<String, dynamic> json) =
      _$TopSearchImpl.fromJson;

  @override
  String? get word;
  @override
  @JsonKey(ignore: true)
  _$$TopSearchImplCopyWith<_$TopSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
