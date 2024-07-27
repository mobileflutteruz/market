// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchProductsData _$SearchProductsDataFromJson(Map<String, dynamic> json) {
  return _SearchProductsData.fromJson(json);
}

/// @nodoc
mixin _$SearchProductsData {
  bool get success => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  List<SearchProduct> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchProductsDataCopyWith<SearchProductsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductsDataCopyWith<$Res> {
  factory $SearchProductsDataCopyWith(
          SearchProductsData value, $Res Function(SearchProductsData) then) =
      _$SearchProductsDataCopyWithImpl<$Res, SearchProductsData>;
  @useResult
  $Res call({bool success, int status, List<SearchProduct> data});
}

/// @nodoc
class _$SearchProductsDataCopyWithImpl<$Res, $Val extends SearchProductsData>
    implements $SearchProductsDataCopyWith<$Res> {
  _$SearchProductsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SearchProduct>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchProductsDataImplCopyWith<$Res>
    implements $SearchProductsDataCopyWith<$Res> {
  factory _$$SearchProductsDataImplCopyWith(_$SearchProductsDataImpl value,
          $Res Function(_$SearchProductsDataImpl) then) =
      __$$SearchProductsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, int status, List<SearchProduct> data});
}

/// @nodoc
class __$$SearchProductsDataImplCopyWithImpl<$Res>
    extends _$SearchProductsDataCopyWithImpl<$Res, _$SearchProductsDataImpl>
    implements _$$SearchProductsDataImplCopyWith<$Res> {
  __$$SearchProductsDataImplCopyWithImpl(_$SearchProductsDataImpl _value,
      $Res Function(_$SearchProductsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$SearchProductsDataImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SearchProduct>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchProductsDataImpl implements _SearchProductsData {
  const _$SearchProductsDataImpl(
      {required this.success,
      required this.status,
      required final List<SearchProduct> data})
      : _data = data;

  factory _$SearchProductsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchProductsDataImplFromJson(json);

  @override
  final bool success;
  @override
  final int status;
  final List<SearchProduct> _data;
  @override
  List<SearchProduct> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SearchProductsData(success: $success, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductsDataImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, status, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductsDataImplCopyWith<_$SearchProductsDataImpl> get copyWith =>
      __$$SearchProductsDataImplCopyWithImpl<_$SearchProductsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchProductsDataImplToJson(
      this,
    );
  }
}

abstract class _SearchProductsData implements SearchProductsData {
  const factory _SearchProductsData(
      {required final bool success,
      required final int status,
      required final List<SearchProduct> data}) = _$SearchProductsDataImpl;

  factory _SearchProductsData.fromJson(Map<String, dynamic> json) =
      _$SearchProductsDataImpl.fromJson;

  @override
  bool get success;
  @override
  int get status;
  @override
  List<SearchProduct> get data;
  @override
  @JsonKey(ignore: true)
  _$$SearchProductsDataImplCopyWith<_$SearchProductsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
