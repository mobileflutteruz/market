// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterBuildableState {
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failure => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  dynamic get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterBuildableStateCopyWith<RegisterBuildableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterBuildableStateCopyWith<$Res> {
  factory $RegisterBuildableStateCopyWith(RegisterBuildableState value,
          $Res Function(RegisterBuildableState) then) =
      _$RegisterBuildableStateCopyWithImpl<$Res, RegisterBuildableState>;
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failure,
      dynamic error,
      UserModel? user,
      dynamic token});
}

/// @nodoc
class _$RegisterBuildableStateCopyWithImpl<$Res,
        $Val extends RegisterBuildableState>
    implements $RegisterBuildableStateCopyWith<$Res> {
  _$RegisterBuildableStateCopyWithImpl(this._value, this._then);

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
    Object? user = freezed,
    Object? token = freezed,
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterBuildableStateImplCopyWith<$Res>
    implements $RegisterBuildableStateCopyWith<$Res> {
  factory _$$RegisterBuildableStateImplCopyWith(
          _$RegisterBuildableStateImpl value,
          $Res Function(_$RegisterBuildableStateImpl) then) =
      __$$RegisterBuildableStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failure,
      dynamic error,
      UserModel? user,
      dynamic token});
}

/// @nodoc
class __$$RegisterBuildableStateImplCopyWithImpl<$Res>
    extends _$RegisterBuildableStateCopyWithImpl<$Res,
        _$RegisterBuildableStateImpl>
    implements _$$RegisterBuildableStateImplCopyWith<$Res> {
  __$$RegisterBuildableStateImplCopyWithImpl(
      _$RegisterBuildableStateImpl _value,
      $Res Function(_$RegisterBuildableStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failure = null,
    Object? error = freezed,
    Object? user = freezed,
    Object? token = freezed,
  }) {
    return _then(_$RegisterBuildableStateImpl(
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$RegisterBuildableStateImpl implements _RegisterBuildableState {
  const _$RegisterBuildableStateImpl(
      {this.loading = false,
      this.success = false,
      this.failure = false,
      this.error,
      this.user,
      this.token});

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
  @override
  final UserModel? user;
  @override
  final dynamic token;

  @override
  String toString() {
    return 'RegisterBuildableState(loading: $loading, success: $success, failure: $failure, error: $error, user: $user, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterBuildableStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      success,
      failure,
      const DeepCollectionEquality().hash(error),
      user,
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterBuildableStateImplCopyWith<_$RegisterBuildableStateImpl>
      get copyWith => __$$RegisterBuildableStateImplCopyWithImpl<
          _$RegisterBuildableStateImpl>(this, _$identity);
}

abstract class _RegisterBuildableState implements RegisterBuildableState {
  const factory _RegisterBuildableState(
      {final bool loading,
      final bool success,
      final bool failure,
      final dynamic error,
      final UserModel? user,
      final dynamic token}) = _$RegisterBuildableStateImpl;

  @override
  bool get loading;
  @override
  bool get success;
  @override
  bool get failure;
  @override
  dynamic get error;
  @override
  UserModel? get user;
  @override
  dynamic get token;
  @override
  @JsonKey(ignore: true)
  _$$RegisterBuildableStateImplCopyWith<_$RegisterBuildableStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
