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
mixin _$CategoryBuildableState {
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;
  List<CategoryModel>? get category => throw _privateConstructorUsedError;
  List<String> get likeIds => throw _privateConstructorUsedError;
  ProductModel? get products => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;

  /// Create a copy of CategoryBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryBuildableStateCopyWith<CategoryBuildableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryBuildableStateCopyWith<$Res> {
  factory $CategoryBuildableStateCopyWith(CategoryBuildableState value,
          $Res Function(CategoryBuildableState) then) =
      _$CategoryBuildableStateCopyWithImpl<$Res, CategoryBuildableState>;
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failed,
      List<CategoryModel>? category,
      List<String> likeIds,
      ProductModel? products,
      dynamic error});

  $ProductModelCopyWith<$Res>? get products;
}

/// @nodoc
class _$CategoryBuildableStateCopyWithImpl<$Res,
        $Val extends CategoryBuildableState>
    implements $CategoryBuildableStateCopyWith<$Res> {
  _$CategoryBuildableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
    Object? category = freezed,
    Object? likeIds = null,
    Object? products = freezed,
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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
      likeIds: null == likeIds
          ? _value.likeIds
          : likeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  /// Create a copy of CategoryBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res>? get products {
    if (_value.products == null) {
      return null;
    }

    return $ProductModelCopyWith<$Res>(_value.products!, (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryBuildableStateImplCopyWith<$Res>
    implements $CategoryBuildableStateCopyWith<$Res> {
  factory _$$CategoryBuildableStateImplCopyWith(
          _$CategoryBuildableStateImpl value,
          $Res Function(_$CategoryBuildableStateImpl) then) =
      __$$CategoryBuildableStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failed,
      List<CategoryModel>? category,
      List<String> likeIds,
      ProductModel? products,
      dynamic error});

  @override
  $ProductModelCopyWith<$Res>? get products;
}

/// @nodoc
class __$$CategoryBuildableStateImplCopyWithImpl<$Res>
    extends _$CategoryBuildableStateCopyWithImpl<$Res,
        _$CategoryBuildableStateImpl>
    implements _$$CategoryBuildableStateImplCopyWith<$Res> {
  __$$CategoryBuildableStateImplCopyWithImpl(
      _$CategoryBuildableStateImpl _value,
      $Res Function(_$CategoryBuildableStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
    Object? category = freezed,
    Object? likeIds = null,
    Object? products = freezed,
    Object? error = freezed,
  }) {
    return _then(_$CategoryBuildableStateImpl(
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
      category: freezed == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
      likeIds: null == likeIds
          ? _value._likeIds
          : likeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$CategoryBuildableStateImpl implements _CategoryBuildableState {
  const _$CategoryBuildableStateImpl(
      {this.loading = false,
      this.success = false,
      this.failed = false,
      final List<CategoryModel>? category,
      final List<String> likeIds = const [],
      this.products,
      this.error})
      : _category = category,
        _likeIds = likeIds;

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final bool failed;
  final List<CategoryModel>? _category;
  @override
  List<CategoryModel>? get category {
    final value = _category;
    if (value == null) return null;
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String> _likeIds;
  @override
  @JsonKey()
  List<String> get likeIds {
    if (_likeIds is EqualUnmodifiableListView) return _likeIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likeIds);
  }

  @override
  final ProductModel? products;
  @override
  final dynamic error;

  @override
  String toString() {
    return 'CategoryBuildableState(loading: $loading, success: $success, failed: $failed, category: $category, likeIds: $likeIds, products: $products, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryBuildableStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            const DeepCollectionEquality().equals(other._likeIds, _likeIds) &&
            (identical(other.products, products) ||
                other.products == products) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      success,
      failed,
      const DeepCollectionEquality().hash(_category),
      const DeepCollectionEquality().hash(_likeIds),
      products,
      const DeepCollectionEquality().hash(error));

  /// Create a copy of CategoryBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryBuildableStateImplCopyWith<_$CategoryBuildableStateImpl>
      get copyWith => __$$CategoryBuildableStateImplCopyWithImpl<
          _$CategoryBuildableStateImpl>(this, _$identity);
}

abstract class _CategoryBuildableState implements CategoryBuildableState {
  const factory _CategoryBuildableState(
      {final bool loading,
      final bool success,
      final bool failed,
      final List<CategoryModel>? category,
      final List<String> likeIds,
      final ProductModel? products,
      final dynamic error}) = _$CategoryBuildableStateImpl;

  @override
  bool get loading;
  @override
  bool get success;
  @override
  bool get failed;
  @override
  List<CategoryModel>? get category;
  @override
  List<String> get likeIds;
  @override
  ProductModel? get products;
  @override
  dynamic get error;

  /// Create a copy of CategoryBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryBuildableStateImplCopyWith<_$CategoryBuildableStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
