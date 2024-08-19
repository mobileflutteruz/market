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
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failure => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<dynamic>? get cards => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  UserInfoss? get userInfo => throw _privateConstructorUsedError;
  dynamic get token => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;

  /// Create a copy of FoodProfileBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoodProfileBuildableStateCopyWith<FoodProfileBuildableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodProfileBuildableStateCopyWith<$Res> {
  factory $FoodProfileBuildableStateCopyWith(FoodProfileBuildableState value,
          $Res Function(FoodProfileBuildableState) then) =
      _$FoodProfileBuildableStateCopyWithImpl<$Res, FoodProfileBuildableState>;
  @useResult
  $Res call(
      {String? userName,
      bool notificationValue,
      UserModel? profileUser,
      bool loading,
      bool success,
      bool failure,
      String errorMessage,
      List<dynamic>? cards,
      UserModel? user,
      UserInfoss? userInfo,
      dynamic token,
      String imagePath});

  $UserModelCopyWith<$Res>? get profileUser;
  $UserModelCopyWith<$Res>? get user;
  $UserInfossCopyWith<$Res>? get userInfo;
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

  /// Create a copy of FoodProfileBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? notificationValue = null,
    Object? profileUser = freezed,
    Object? loading = null,
    Object? success = null,
    Object? failure = null,
    Object? errorMessage = null,
    Object? cards = freezed,
    Object? user = freezed,
    Object? userInfo = freezed,
    Object? token = freezed,
    Object? imagePath = null,
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
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      cards: freezed == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      userInfo: freezed == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfoss?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as dynamic,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of FoodProfileBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get profileUser {
    if (_value.profileUser == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.profileUser!, (value) {
      return _then(_value.copyWith(profileUser: value) as $Val);
    });
  }

  /// Create a copy of FoodProfileBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of FoodProfileBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserInfossCopyWith<$Res>? get userInfo {
    if (_value.userInfo == null) {
      return null;
    }

    return $UserInfossCopyWith<$Res>(_value.userInfo!, (value) {
      return _then(_value.copyWith(userInfo: value) as $Val);
    });
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
  $Res call(
      {String? userName,
      bool notificationValue,
      UserModel? profileUser,
      bool loading,
      bool success,
      bool failure,
      String errorMessage,
      List<dynamic>? cards,
      UserModel? user,
      UserInfoss? userInfo,
      dynamic token,
      String imagePath});

  @override
  $UserModelCopyWith<$Res>? get profileUser;
  @override
  $UserModelCopyWith<$Res>? get user;
  @override
  $UserInfossCopyWith<$Res>? get userInfo;
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

  /// Create a copy of FoodProfileBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? notificationValue = null,
    Object? profileUser = freezed,
    Object? loading = null,
    Object? success = null,
    Object? failure = null,
    Object? errorMessage = null,
    Object? cards = freezed,
    Object? user = freezed,
    Object? userInfo = freezed,
    Object? token = freezed,
    Object? imagePath = null,
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
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      cards: freezed == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      userInfo: freezed == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfoss?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as dynamic,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FoodProfileBuildableStateImpl implements _FoodProfileBuildableState {
  const _$FoodProfileBuildableStateImpl(
      {this.userName = null,
      this.notificationValue = false,
      this.profileUser = null,
      this.loading = false,
      this.success = false,
      this.failure = false,
      this.errorMessage = '',
      final List<dynamic>? cards,
      this.user,
      this.userInfo,
      this.token,
      this.imagePath = ''})
      : _cards = cards;

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
  final String errorMessage;
  final List<dynamic>? _cards;
  @override
  List<dynamic>? get cards {
    final value = _cards;
    if (value == null) return null;
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final UserModel? user;
  @override
  final UserInfoss? userInfo;
  @override
  final dynamic token;
  @override
  @JsonKey()
  final String imagePath;

  @override
  String toString() {
    return 'FoodProfileBuildableState(userName: $userName, notificationValue: $notificationValue, profileUser: $profileUser, loading: $loading, success: $success, failure: $failure, errorMessage: $errorMessage, cards: $cards, user: $user, userInfo: $userInfo, token: $token, imagePath: $imagePath)';
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
                other.profileUser == profileUser) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._cards, _cards) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo) &&
            const DeepCollectionEquality().equals(other.token, token) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userName,
      notificationValue,
      profileUser,
      loading,
      success,
      failure,
      errorMessage,
      const DeepCollectionEquality().hash(_cards),
      user,
      userInfo,
      const DeepCollectionEquality().hash(token),
      imagePath);

  /// Create a copy of FoodProfileBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      final UserModel? profileUser,
      final bool loading,
      final bool success,
      final bool failure,
      final String errorMessage,
      final List<dynamic>? cards,
      final UserModel? user,
      final UserInfoss? userInfo,
      final dynamic token,
      final String imagePath}) = _$FoodProfileBuildableStateImpl;

  @override
  String? get userName;
  @override
  bool get notificationValue;
  @override
  UserModel? get profileUser;
  @override
  bool get loading;
  @override
  bool get success;
  @override
  bool get failure;
  @override
  String get errorMessage;
  @override
  List<dynamic>? get cards;
  @override
  UserModel? get user;
  @override
  UserInfoss? get userInfo;
  @override
  dynamic get token;
  @override
  String get imagePath;

  /// Create a copy of FoodProfileBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodProfileBuildableStateImplCopyWith<_$FoodProfileBuildableStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
