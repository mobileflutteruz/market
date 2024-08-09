// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchdBuildableState {
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failure => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  List<SearchProduct>? get product => throw _privateConstructorUsedError;
  SearchedHistory? get searched => throw _privateConstructorUsedError;
  AllProductDeleted? get allDeleted => throw _privateConstructorUsedError;
  DeletedId? get deletedId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchdBuildableStateCopyWith<SearchdBuildableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchdBuildableStateCopyWith<$Res> {
  factory $SearchdBuildableStateCopyWith(SearchdBuildableState value,
          $Res Function(SearchdBuildableState) then) =
      _$SearchdBuildableStateCopyWithImpl<$Res, SearchdBuildableState>;
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failure,
      dynamic error,
      List<SearchProduct>? product,
      SearchedHistory? searched,
      AllProductDeleted? allDeleted,
      DeletedId? deletedId});

  $SearchedHistoryCopyWith<$Res>? get searched;
  $AllProductDeletedCopyWith<$Res>? get allDeleted;
  $DeletedIdCopyWith<$Res>? get deletedId;
}

/// @nodoc
class _$SearchdBuildableStateCopyWithImpl<$Res,
        $Val extends SearchdBuildableState>
    implements $SearchdBuildableStateCopyWith<$Res> {
  _$SearchdBuildableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failure = null,
    Object? error = freezed,
    Object? product = freezed,
    Object? searched = freezed,
    Object? allDeleted = freezed,
    Object? deletedId = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as List<SearchProduct>?,
      searched: freezed == searched
          ? _value.searched
          : searched // ignore: cast_nullable_to_non_nullable
              as SearchedHistory?,
      allDeleted: freezed == allDeleted
          ? _value.allDeleted
          : allDeleted // ignore: cast_nullable_to_non_nullable
              as AllProductDeleted?,
      deletedId: freezed == deletedId
          ? _value.deletedId
          : deletedId // ignore: cast_nullable_to_non_nullable
              as DeletedId?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchedHistoryCopyWith<$Res>? get searched {
    if (_value.searched == null) {
      return null;
    }

    return $SearchedHistoryCopyWith<$Res>(_value.searched!, (value) {
      return _then(_value.copyWith(searched: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AllProductDeletedCopyWith<$Res>? get allDeleted {
    if (_value.allDeleted == null) {
      return null;
    }

    return $AllProductDeletedCopyWith<$Res>(_value.allDeleted!, (value) {
      return _then(_value.copyWith(allDeleted: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DeletedIdCopyWith<$Res>? get deletedId {
    if (_value.deletedId == null) {
      return null;
    }

    return $DeletedIdCopyWith<$Res>(_value.deletedId!, (value) {
      return _then(_value.copyWith(deletedId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchedBuildableStateImplCopyWith<$Res>
    implements $SearchdBuildableStateCopyWith<$Res> {
  factory _$$SearchedBuildableStateImplCopyWith(
          _$SearchedBuildableStateImpl value,
          $Res Function(_$SearchedBuildableStateImpl) then) =
      __$$SearchedBuildableStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failure,
      dynamic error,
      List<SearchProduct>? product,
      SearchedHistory? searched,
      AllProductDeleted? allDeleted,
      DeletedId? deletedId});

  @override
  $SearchedHistoryCopyWith<$Res>? get searched;
  @override
  $AllProductDeletedCopyWith<$Res>? get allDeleted;
  @override
  $DeletedIdCopyWith<$Res>? get deletedId;
}

/// @nodoc
class __$$SearchedBuildableStateImplCopyWithImpl<$Res>
    extends _$SearchdBuildableStateCopyWithImpl<$Res,
        _$SearchedBuildableStateImpl>
    implements _$$SearchedBuildableStateImplCopyWith<$Res> {
  __$$SearchedBuildableStateImplCopyWithImpl(
      _$SearchedBuildableStateImpl _value,
      $Res Function(_$SearchedBuildableStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failure = null,
    Object? error = freezed,
    Object? product = freezed,
    Object? searched = freezed,
    Object? allDeleted = freezed,
    Object? deletedId = freezed,
  }) {
    return _then(_$SearchedBuildableStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      product: freezed == product
          ? _value._product
          : product // ignore: cast_nullable_to_non_nullable
              as List<SearchProduct>?,
      searched: freezed == searched
          ? _value.searched
          : searched // ignore: cast_nullable_to_non_nullable
              as SearchedHistory?,
      allDeleted: freezed == allDeleted
          ? _value.allDeleted
          : allDeleted // ignore: cast_nullable_to_non_nullable
              as AllProductDeleted?,
      deletedId: freezed == deletedId
          ? _value.deletedId
          : deletedId // ignore: cast_nullable_to_non_nullable
              as DeletedId?,
    ));
  }
}

/// @nodoc

class _$SearchedBuildableStateImpl implements _SearchedBuildableState {
  const _$SearchedBuildableStateImpl(
      {this.loading = false,
      this.success = false,
      this.failure = false,
      this.error,
      final List<SearchProduct>? product,
      this.searched,
      this.allDeleted,
      this.deletedId})
      : _product = product;

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final bool failure;
  @override
  final dynamic error;
  final List<SearchProduct>? _product;
  @override
  List<SearchProduct>? get product {
    final value = _product;
    if (value == null) return null;
    if (_product is EqualUnmodifiableListView) return _product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SearchedHistory? searched;
  @override
  final AllProductDeleted? allDeleted;
  @override
  final DeletedId? deletedId;

  @override
  String toString() {
    return 'SearchdBuildableState(loading: $loading, success: $success, failure: $failure, error: $error, product: $product, searched: $searched, allDeleted: $allDeleted, deletedId: $deletedId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchedBuildableStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other._product, _product) &&
            (identical(other.searched, searched) ||
                other.searched == searched) &&
            (identical(other.allDeleted, allDeleted) ||
                other.allDeleted == allDeleted) &&
            (identical(other.deletedId, deletedId) ||
                other.deletedId == deletedId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      success,
      failure,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_product),
      searched,
      allDeleted,
      deletedId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchedBuildableStateImplCopyWith<_$SearchedBuildableStateImpl>
      get copyWith => __$$SearchedBuildableStateImplCopyWithImpl<
          _$SearchedBuildableStateImpl>(this, _$identity);
}

abstract class _SearchedBuildableState implements SearchdBuildableState {
  const factory _SearchedBuildableState(
      {final bool loading,
      final bool success,
      final bool failure,
      final dynamic error,
      final List<SearchProduct>? product,
      final SearchedHistory? searched,
      final AllProductDeleted? allDeleted,
      final DeletedId? deletedId}) = _$SearchedBuildableStateImpl;

  @override
  bool get loading;
  @override
  bool get success;
  @override
  bool get failure;
  @override
  dynamic get error;
  @override
  List<SearchProduct>? get product;
  @override
  SearchedHistory? get searched;
  @override
  AllProductDeleted? get allDeleted;
  @override
  DeletedId? get deletedId;
  @override
  @JsonKey(ignore: true)
  _$$SearchedBuildableStateImplCopyWith<_$SearchedBuildableStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
