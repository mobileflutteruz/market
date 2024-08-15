// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OtpBuildableState {
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;

  /// Create a copy of OtpBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpBuildableStateCopyWith<OtpBuildableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpBuildableStateCopyWith<$Res> {
  factory $OtpBuildableStateCopyWith(
          OtpBuildableState value, $Res Function(OtpBuildableState) then) =
      _$OtpBuildableStateCopyWithImpl<$Res, OtpBuildableState>;
  @useResult
  $Res call({bool loading, bool success, bool failed, dynamic error});
}

/// @nodoc
class _$OtpBuildableStateCopyWithImpl<$Res, $Val extends OtpBuildableState>
    implements $OtpBuildableStateCopyWith<$Res> {
  _$OtpBuildableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
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
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpBuildableStateImplCopyWith<$Res>
    implements $OtpBuildableStateCopyWith<$Res> {
  factory _$$OtpBuildableStateImplCopyWith(_$OtpBuildableStateImpl value,
          $Res Function(_$OtpBuildableStateImpl) then) =
      __$$OtpBuildableStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, bool success, bool failed, dynamic error});
}

/// @nodoc
class __$$OtpBuildableStateImplCopyWithImpl<$Res>
    extends _$OtpBuildableStateCopyWithImpl<$Res, _$OtpBuildableStateImpl>
    implements _$$OtpBuildableStateImplCopyWith<$Res> {
  __$$OtpBuildableStateImplCopyWithImpl(_$OtpBuildableStateImpl _value,
      $Res Function(_$OtpBuildableStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
    Object? error = freezed,
  }) {
    return _then(_$OtpBuildableStateImpl(
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
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$OtpBuildableStateImpl implements _OtpBuildableState {
  const _$OtpBuildableStateImpl(
      {this.loading = false,
      this.success = false,
      this.failed = false,
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
  final dynamic error;

  @override
  String toString() {
    return 'OtpBuildableState(loading: $loading, success: $success, failed: $failed, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpBuildableStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, success, failed,
      const DeepCollectionEquality().hash(error));

  /// Create a copy of OtpBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpBuildableStateImplCopyWith<_$OtpBuildableStateImpl> get copyWith =>
      __$$OtpBuildableStateImplCopyWithImpl<_$OtpBuildableStateImpl>(
          this, _$identity);
}

abstract class _OtpBuildableState implements OtpBuildableState {
  const factory _OtpBuildableState(
      {final bool loading,
      final bool success,
      final bool failed,
      final dynamic error}) = _$OtpBuildableStateImpl;

  @override
  bool get loading;
  @override
  bool get success;
  @override
  bool get failed;
  @override
  dynamic get error;

  /// Create a copy of OtpBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpBuildableStateImplCopyWith<_$OtpBuildableStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
