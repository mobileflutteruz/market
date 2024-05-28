// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginBuildableState {
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failure => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginBuildableStateCopyWith<LoginBuildableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginBuildableStateCopyWith<$Res> {
  factory $LoginBuildableStateCopyWith(
          LoginBuildableState value, $Res Function(LoginBuildableState) then) =
      _$LoginBuildableStateCopyWithImpl<$Res, LoginBuildableState>;
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failure,
      String? message,
      dynamic error});
}

/// @nodoc
class _$LoginBuildableStateCopyWithImpl<$Res, $Val extends LoginBuildableState>
    implements $LoginBuildableStateCopyWith<$Res> {
  _$LoginBuildableStateCopyWithImpl(this._value, this._then);

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
    Object? message = freezed,
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
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginBuildableStateImplCopyWith<$Res>
    implements $LoginBuildableStateCopyWith<$Res> {
  factory _$$LoginBuildableStateImplCopyWith(_$LoginBuildableStateImpl value,
          $Res Function(_$LoginBuildableStateImpl) then) =
      __$$LoginBuildableStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failure,
      String? message,
      dynamic error});
}

/// @nodoc
class __$$LoginBuildableStateImplCopyWithImpl<$Res>
    extends _$LoginBuildableStateCopyWithImpl<$Res, _$LoginBuildableStateImpl>
    implements _$$LoginBuildableStateImplCopyWith<$Res> {
  __$$LoginBuildableStateImplCopyWithImpl(_$LoginBuildableStateImpl _value,
      $Res Function(_$LoginBuildableStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failure = null,
    Object? message = freezed,
    Object? error = freezed,
  }) {
    return _then(_$LoginBuildableStateImpl(
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
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$LoginBuildableStateImpl implements _LoginBuildableState {
  _$LoginBuildableStateImpl(
      {this.loading = false,
      this.success = false,
      this.failure = false,
      this.message = null,
      this.error});

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
  @JsonKey()
  final String? message;
  @override
  final dynamic error;

  @override
  String toString() {
    return 'LoginBuildableState(loading: $loading, success: $success, failure: $failure, message: $message, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginBuildableStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, success, failure,
      message, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginBuildableStateImplCopyWith<_$LoginBuildableStateImpl> get copyWith =>
      __$$LoginBuildableStateImplCopyWithImpl<_$LoginBuildableStateImpl>(
          this, _$identity);
}

abstract class _LoginBuildableState implements LoginBuildableState {
  factory _LoginBuildableState(
      {final bool loading,
      final bool success,
      final bool failure,
      final String? message,
      final dynamic error}) = _$LoginBuildableStateImpl;

  @override
  bool get loading;
  @override
  bool get success;
  @override
  bool get failure;
  @override
  String? get message;
  @override
  dynamic get error;
  @override
  @JsonKey(ignore: true)
  _$$LoginBuildableStateImplCopyWith<_$LoginBuildableStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
