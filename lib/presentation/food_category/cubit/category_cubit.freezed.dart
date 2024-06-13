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
mixin _$CategoryBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;
  List<CategoryModel>? get category =>
      throw _privateConstructorUsedError; // CartProductModel? cartProductModel,
// Product? product,
  dynamic get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryBuildableCopyWith<CategoryBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryBuildableCopyWith<$Res> {
  factory $CategoryBuildableCopyWith(
          CategoryBuildable value, $Res Function(CategoryBuildable) then) =
      _$CategoryBuildableCopyWithImpl<$Res, CategoryBuildable>;
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failed,
      List<CategoryModel>? category,
      dynamic error});
}

/// @nodoc
class _$CategoryBuildableCopyWithImpl<$Res, $Val extends CategoryBuildable>
    implements $CategoryBuildableCopyWith<$Res> {
  _$CategoryBuildableCopyWithImpl(this._value, this._then);

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
    Object? category = freezed,
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
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryBuildableImplCopyWith<$Res>
    implements $CategoryBuildableCopyWith<$Res> {
  factory _$$CategoryBuildableImplCopyWith(_$CategoryBuildableImpl value,
          $Res Function(_$CategoryBuildableImpl) then) =
      __$$CategoryBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failed,
      List<CategoryModel>? category,
      dynamic error});
}

/// @nodoc
class __$$CategoryBuildableImplCopyWithImpl<$Res>
    extends _$CategoryBuildableCopyWithImpl<$Res, _$CategoryBuildableImpl>
    implements _$$CategoryBuildableImplCopyWith<$Res> {
  __$$CategoryBuildableImplCopyWithImpl(_$CategoryBuildableImpl _value,
      $Res Function(_$CategoryBuildableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
    Object? category = freezed,
    Object? error = freezed,
  }) {
    return _then(_$CategoryBuildableImpl(
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
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$CategoryBuildableImpl implements _CategoryBuildable {
  const _$CategoryBuildableImpl(
      {this.loading = false,
      this.success = false,
      this.failed = false,
      final List<CategoryModel>? category,
      this.error})
      : _category = category;

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

// CartProductModel? cartProductModel,
// Product? product,
  @override
  final dynamic error;

  @override
  String toString() {
    return 'CategoryBuildable(loading: $loading, success: $success, failed: $failed, category: $category, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      success,
      failed,
      const DeepCollectionEquality().hash(_category),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryBuildableImplCopyWith<_$CategoryBuildableImpl> get copyWith =>
      __$$CategoryBuildableImplCopyWithImpl<_$CategoryBuildableImpl>(
          this, _$identity);
}

abstract class _CategoryBuildable implements CategoryBuildable {
  const factory _CategoryBuildable(
      {final bool loading,
      final bool success,
      final bool failed,
      final List<CategoryModel>? category,
      final dynamic error}) = _$CategoryBuildableImpl;

  @override
  bool get loading;
  @override
  bool get success;
  @override
  bool get failed;
  @override
  List<CategoryModel>? get category;
  @override // CartProductModel? cartProductModel,
// Product? product,
  dynamic get error;
  @override
  @JsonKey(ignore: true)
  _$$CategoryBuildableImplCopyWith<_$CategoryBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
