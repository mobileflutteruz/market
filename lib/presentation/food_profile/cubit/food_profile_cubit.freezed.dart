// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FoodProfileBuildableState {
  String? get userName => throw _privateConstructorUsedError;
  bool get notificationValue => throw _privateConstructorUsedError;
  UserModel? get profileUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodProfileBuildableStateCopyWith<FoodProfileBuildableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodProfileBuildableStateCopyWith<$Res> {
  factory $FoodProfileBuildableStateCopyWith(FoodProfileBuildableState value,
          $Res Function(FoodProfileBuildableState) then) =
      _$FoodProfileBuildableStateCopyWithImpl<$Res, FoodProfileBuildableState>;
  @useResult
  $Res call({String? userName, bool notificationValue, UserModel? profileUser});
}

/// @nodoc
class _$FoodProfileBuildableStateCopyWithImpl<$Res,
        $Val extends FoodProfileBuildableState>
    implements $FoodProfileBuildableStateCopyWith<$Res> {
  _$FoodProfileBuildableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? notificationValue = null,
    Object? profileUser = freezed,
  }) {
    return _then(_value.copyWith(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationValue: null == notificationValue
          ? _value.notificationValue
          : notificationValue // ignore: cast_nullable_to_non_nullable
              as bool,
      profileUser: freezed == profileUser
          ? _value.profileUser
          : profileUser // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodProfileBuildableStateImplCopyWith<$Res>
    implements $FoodProfileBuildableStateCopyWith<$Res> {
  factory _$$FoodProfileBuildableStateImplCopyWith(
          _$FoodProfileBuildableStateImpl value,
          $Res Function(_$FoodProfileBuildableStateImpl) then) =
      __$$FoodProfileBuildableStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userName, bool notificationValue, UserModel? profileUser});
}

/// @nodoc
class __$$FoodProfileBuildableStateImplCopyWithImpl<$Res>
    extends _$FoodProfileBuildableStateCopyWithImpl<$Res,
        _$FoodProfileBuildableStateImpl>
    implements _$$FoodProfileBuildableStateImplCopyWith<$Res> {
  __$$FoodProfileBuildableStateImplCopyWithImpl(
      _$FoodProfileBuildableStateImpl _value,
      $Res Function(_$FoodProfileBuildableStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? notificationValue = null,
    Object? profileUser = freezed,
  }) {
    return _then(_$FoodProfileBuildableStateImpl(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationValue: null == notificationValue
          ? _value.notificationValue
          : notificationValue // ignore: cast_nullable_to_non_nullable
              as bool,
      profileUser: freezed == profileUser
          ? _value.profileUser
          : profileUser // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$FoodProfileBuildableStateImpl implements _FoodProfileBuildableState {
  const _$FoodProfileBuildableStateImpl(
      {this.userName = null,
      this.notificationValue = false,
      this.profileUser = null});

  @override
  @JsonKey()
  final String? userName;
  @override
  @JsonKey()
  final bool notificationValue;
  @override
  @JsonKey()
  final UserModel? profileUser;

  @override
  String toString() {
    return 'FoodProfileBuildableState(userName: $userName, notificationValue: $notificationValue, profileUser: $profileUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodProfileBuildableStateImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.notificationValue, notificationValue) ||
                other.notificationValue == notificationValue) &&
            (identical(other.profileUser, profileUser) ||
                other.profileUser == profileUser));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userName, notificationValue, profileUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodProfileBuildableStateImplCopyWith<_$FoodProfileBuildableStateImpl>
      get copyWith => __$$FoodProfileBuildableStateImplCopyWithImpl<
          _$FoodProfileBuildableStateImpl>(this, _$identity);
}

abstract class _FoodProfileBuildableState implements FoodProfileBuildableState {
  const factory _FoodProfileBuildableState(
      {final String? userName,
      final bool notificationValue,
      final UserModel? profileUser}) = _$FoodProfileBuildableStateImpl;

  @override
  String? get userName;
  @override
  bool get notificationValue;
  @override
  UserModel? get profileUser;
  @override
  @JsonKey(ignore: true)
  _$$FoodProfileBuildableStateImplCopyWith<_$FoodProfileBuildableStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
