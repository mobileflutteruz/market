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
  String? get userName => throw _privateConstructorUsedError;
  bool get notificationValue => throw _privateConstructorUsedError;
  UserModel? get profileUser => throw _privateConstructorUsedError;
  UserInfo? get foodUser => throw _privateConstructorUsedError;

  /// Create a copy of SearchdBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      DeletedId? deletedId,
      String? userName,
      bool notificationValue,
      UserModel? profileUser,
      UserInfo? foodUser});

  $SearchedHistoryCopyWith<$Res>? get searched;
  $AllProductDeletedCopyWith<$Res>? get allDeleted;
  $DeletedIdCopyWith<$Res>? get deletedId;
  $UserModelCopyWith<$Res>? get profileUser;
  $UserInfoCopyWith<$Res>? get foodUser;
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

  /// Create a copy of SearchdBuildableState
  /// with the given fields replaced by the non-null parameter values.
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
    Object? userName = freezed,
    Object? notificationValue = null,
    Object? profileUser = freezed,
    Object? foodUser = freezed,
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
      foodUser: freezed == foodUser
          ? _value.foodUser
          : foodUser // ignore: cast_nullable_to_non_nullable
              as UserInfo?,
    ) as $Val);
  }

  /// Create a copy of SearchdBuildableState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of SearchdBuildableState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of SearchdBuildableState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of SearchdBuildableState
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

  /// Create a copy of SearchdBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserInfoCopyWith<$Res>? get foodUser {
    if (_value.foodUser == null) {
      return null;
    }

    return $UserInfoCopyWith<$Res>(_value.foodUser!, (value) {
      return _then(_value.copyWith(foodUser: value) as $Val);
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
      DeletedId? deletedId,
      String? userName,
      bool notificationValue,
      UserModel? profileUser,
      UserInfo? foodUser});

  @override
  $SearchedHistoryCopyWith<$Res>? get searched;
  @override
  $AllProductDeletedCopyWith<$Res>? get allDeleted;
  @override
  $DeletedIdCopyWith<$Res>? get deletedId;
  @override
  $UserModelCopyWith<$Res>? get profileUser;
  @override
  $UserInfoCopyWith<$Res>? get foodUser;
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

  /// Create a copy of SearchdBuildableState
  /// with the given fields replaced by the non-null parameter values.
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
    Object? userName = freezed,
    Object? notificationValue = null,
    Object? profileUser = freezed,
    Object? foodUser = freezed,
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
      foodUser: freezed == foodUser
          ? _value.foodUser
          : foodUser // ignore: cast_nullable_to_non_nullable
              as UserInfo?,
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
      this.deletedId,
      this.userName = null,
      this.notificationValue = false,
      this.profileUser = null,
      this.foodUser = null})
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
  final UserInfo? foodUser;

  @override
  String toString() {
    return 'SearchdBuildableState(loading: $loading, success: $success, failure: $failure, error: $error, product: $product, searched: $searched, allDeleted: $allDeleted, deletedId: $deletedId, userName: $userName, notificationValue: $notificationValue, profileUser: $profileUser, foodUser: $foodUser)';
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
                other.deletedId == deletedId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.notificationValue, notificationValue) ||
                other.notificationValue == notificationValue) &&
            (identical(other.profileUser, profileUser) ||
                other.profileUser == profileUser) &&
            (identical(other.foodUser, foodUser) ||
                other.foodUser == foodUser));
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
      deletedId,
      userName,
      notificationValue,
      profileUser,
      foodUser);

  /// Create a copy of SearchdBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      final DeletedId? deletedId,
      final String? userName,
      final bool notificationValue,
      final UserModel? profileUser,
      final UserInfo? foodUser}) = _$SearchedBuildableStateImpl;

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
  String? get userName;
  @override
  bool get notificationValue;
  @override
  UserModel? get profileUser;
  @override
  UserInfo? get foodUser;

  /// Create a copy of SearchdBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchedBuildableStateImplCopyWith<_$SearchedBuildableStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
