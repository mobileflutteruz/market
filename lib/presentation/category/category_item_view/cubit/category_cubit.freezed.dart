// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryProductBuildableState {
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;
  ProductModel? get categoryProduct => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryProductBuildableStateCopyWith<CategoryProductBuildableState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryProductBuildableStateCopyWith<$Res> {
  factory $CategoryProductBuildableStateCopyWith(
          CategoryProductBuildableState value,
          $Res Function(CategoryProductBuildableState) then) =
      _$CategoryProductBuildableStateCopyWithImpl<$Res,
          CategoryProductBuildableState>;
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failed,
      ProductModel? categoryProduct,
      dynamic error});

  $ProductModelCopyWith<$Res>? get categoryProduct;
}

/// @nodoc
class _$CategoryProductBuildableStateCopyWithImpl<$Res,
        $Val extends CategoryProductBuildableState>
    implements $CategoryProductBuildableStateCopyWith<$Res> {
  _$CategoryProductBuildableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
    Object? categoryProduct = freezed,
    Object? error = freezed,
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
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
      categoryProduct: freezed == categoryProduct
          ? _value.categoryProduct
          : categoryProduct // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res>? get categoryProduct {
    if (_value.categoryProduct == null) {
      return null;
    }

    return $ProductModelCopyWith<$Res>(_value.categoryProduct!, (value) {
      return _then(_value.copyWith(categoryProduct: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryProductBuildableStateImplCopyWith<$Res>
    implements $CategoryProductBuildableStateCopyWith<$Res> {
  factory _$$CategoryProductBuildableStateImplCopyWith(
          _$CategoryProductBuildableStateImpl value,
          $Res Function(_$CategoryProductBuildableStateImpl) then) =
      __$$CategoryProductBuildableStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failed,
      ProductModel? categoryProduct,
      dynamic error});

  @override
  $ProductModelCopyWith<$Res>? get categoryProduct;
}

/// @nodoc
class __$$CategoryProductBuildableStateImplCopyWithImpl<$Res>
    extends _$CategoryProductBuildableStateCopyWithImpl<$Res,
        _$CategoryProductBuildableStateImpl>
    implements _$$CategoryProductBuildableStateImplCopyWith<$Res> {
  __$$CategoryProductBuildableStateImplCopyWithImpl(
      _$CategoryProductBuildableStateImpl _value,
      $Res Function(_$CategoryProductBuildableStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
    Object? categoryProduct = freezed,
    Object? error = freezed,
  }) {
    return _then(_$CategoryProductBuildableStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
      categoryProduct: freezed == categoryProduct
          ? _value.categoryProduct
          : categoryProduct // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$CategoryProductBuildableStateImpl
    implements _CategoryProductBuildableState {
  const _$CategoryProductBuildableStateImpl(
      {this.loading = false,
      this.success = false,
      this.failed = false,
      this.categoryProduct,
      this.error});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final bool failed;
  @override
  final ProductModel? categoryProduct;
  @override
  final dynamic error;

  @override
  String toString() {
    return 'CategoryProductBuildableState(loading: $loading, success: $success, failed: $failed, categoryProduct: $categoryProduct, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryProductBuildableStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            (identical(other.categoryProduct, categoryProduct) ||
                other.categoryProduct == categoryProduct) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, success, failed,
      categoryProduct, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryProductBuildableStateImplCopyWith<
          _$CategoryProductBuildableStateImpl>
      get copyWith => __$$CategoryProductBuildableStateImplCopyWithImpl<
          _$CategoryProductBuildableStateImpl>(this, _$identity);
}

abstract class _CategoryProductBuildableState
    implements CategoryProductBuildableState {
  const factory _CategoryProductBuildableState(
      {final bool loading,
      final bool success,
      final bool failed,
      final ProductModel? categoryProduct,
      final dynamic error}) = _$CategoryProductBuildableStateImpl;

  @override
  bool get loading;
  @override
  bool get success;
  @override
  bool get failed;
  @override
  ProductModel? get categoryProduct;
  @override
  dynamic get error;
  @override
  @JsonKey(ignore: true)
  _$$CategoryProductBuildableStateImplCopyWith<
          _$CategoryProductBuildableStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
