// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourites_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavouritesBuildableState {
  int get imageIndex => throw _privateConstructorUsedError;
  int get cardProductCount => throw _privateConstructorUsedError;
  List<String> get likeIds => throw _privateConstructorUsedError;
  int get infoTabIndex => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failure => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get descriptionIsExpandable => throw _privateConstructorUsedError;
  bool get characteristicsIsExpandable => throw _privateConstructorUsedError;
  Favourite? get favourites => throw _privateConstructorUsedError;

  /// Create a copy of FavouritesBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavouritesBuildableStateCopyWith<FavouritesBuildableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesBuildableStateCopyWith<$Res> {
  factory $FavouritesBuildableStateCopyWith(FavouritesBuildableState value,
          $Res Function(FavouritesBuildableState) then) =
      _$FavouritesBuildableStateCopyWithImpl<$Res, FavouritesBuildableState>;
  @useResult
  $Res call(
      {int imageIndex,
      int cardProductCount,
      List<String> likeIds,
      int infoTabIndex,
      bool loading,
      bool success,
      bool failure,
      String errorMessage,
      bool descriptionIsExpandable,
      bool characteristicsIsExpandable,
      Favourite? favourites});

  $FavouriteCopyWith<$Res>? get favourites;
}

/// @nodoc
class _$FavouritesBuildableStateCopyWithImpl<$Res,
        $Val extends FavouritesBuildableState>
    implements $FavouritesBuildableStateCopyWith<$Res> {
  _$FavouritesBuildableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavouritesBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageIndex = null,
    Object? cardProductCount = null,
    Object? likeIds = null,
    Object? infoTabIndex = null,
    Object? loading = null,
    Object? success = null,
    Object? failure = null,
    Object? errorMessage = null,
    Object? descriptionIsExpandable = null,
    Object? characteristicsIsExpandable = null,
    Object? favourites = freezed,
  }) {
    return _then(_value.copyWith(
      imageIndex: null == imageIndex
          ? _value.imageIndex
          : imageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      cardProductCount: null == cardProductCount
          ? _value.cardProductCount
          : cardProductCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeIds: null == likeIds
          ? _value.likeIds
          : likeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      infoTabIndex: null == infoTabIndex
          ? _value.infoTabIndex
          : infoTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
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
      descriptionIsExpandable: null == descriptionIsExpandable
          ? _value.descriptionIsExpandable
          : descriptionIsExpandable // ignore: cast_nullable_to_non_nullable
              as bool,
      characteristicsIsExpandable: null == characteristicsIsExpandable
          ? _value.characteristicsIsExpandable
          : characteristicsIsExpandable // ignore: cast_nullable_to_non_nullable
              as bool,
      favourites: freezed == favourites
          ? _value.favourites
          : favourites // ignore: cast_nullable_to_non_nullable
              as Favourite?,
    ) as $Val);
  }

  /// Create a copy of FavouritesBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FavouriteCopyWith<$Res>? get favourites {
    if (_value.favourites == null) {
      return null;
    }

    return $FavouriteCopyWith<$Res>(_value.favourites!, (value) {
      return _then(_value.copyWith(favourites: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FavouritesBuildableStateImplCopyWith<$Res>
    implements $FavouritesBuildableStateCopyWith<$Res> {
  factory _$$FavouritesBuildableStateImplCopyWith(
          _$FavouritesBuildableStateImpl value,
          $Res Function(_$FavouritesBuildableStateImpl) then) =
      __$$FavouritesBuildableStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int imageIndex,
      int cardProductCount,
      List<String> likeIds,
      int infoTabIndex,
      bool loading,
      bool success,
      bool failure,
      String errorMessage,
      bool descriptionIsExpandable,
      bool characteristicsIsExpandable,
      Favourite? favourites});

  @override
  $FavouriteCopyWith<$Res>? get favourites;
}

/// @nodoc
class __$$FavouritesBuildableStateImplCopyWithImpl<$Res>
    extends _$FavouritesBuildableStateCopyWithImpl<$Res,
        _$FavouritesBuildableStateImpl>
    implements _$$FavouritesBuildableStateImplCopyWith<$Res> {
  __$$FavouritesBuildableStateImplCopyWithImpl(
      _$FavouritesBuildableStateImpl _value,
      $Res Function(_$FavouritesBuildableStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavouritesBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageIndex = null,
    Object? cardProductCount = null,
    Object? likeIds = null,
    Object? infoTabIndex = null,
    Object? loading = null,
    Object? success = null,
    Object? failure = null,
    Object? errorMessage = null,
    Object? descriptionIsExpandable = null,
    Object? characteristicsIsExpandable = null,
    Object? favourites = freezed,
  }) {
    return _then(_$FavouritesBuildableStateImpl(
      imageIndex: null == imageIndex
          ? _value.imageIndex
          : imageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      cardProductCount: null == cardProductCount
          ? _value.cardProductCount
          : cardProductCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeIds: null == likeIds
          ? _value._likeIds
          : likeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      infoTabIndex: null == infoTabIndex
          ? _value.infoTabIndex
          : infoTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
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
      descriptionIsExpandable: null == descriptionIsExpandable
          ? _value.descriptionIsExpandable
          : descriptionIsExpandable // ignore: cast_nullable_to_non_nullable
              as bool,
      characteristicsIsExpandable: null == characteristicsIsExpandable
          ? _value.characteristicsIsExpandable
          : characteristicsIsExpandable // ignore: cast_nullable_to_non_nullable
              as bool,
      favourites: freezed == favourites
          ? _value.favourites
          : favourites // ignore: cast_nullable_to_non_nullable
              as Favourite?,
    ));
  }
}

/// @nodoc

class _$FavouritesBuildableStateImpl implements _FavouritesBuildableState {
  const _$FavouritesBuildableStateImpl(
      {this.imageIndex = 0,
      this.cardProductCount = 0,
      final List<String> likeIds = const [],
      this.infoTabIndex = 0,
      this.loading = false,
      this.success = false,
      this.failure = false,
      this.errorMessage = '',
      this.descriptionIsExpandable = false,
      this.characteristicsIsExpandable = false,
      this.favourites})
      : _likeIds = likeIds;

  @override
  @JsonKey()
  final int imageIndex;
  @override
  @JsonKey()
  final int cardProductCount;
  final List<String> _likeIds;
  @override
  @JsonKey()
  List<String> get likeIds {
    if (_likeIds is EqualUnmodifiableListView) return _likeIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likeIds);
  }

  @override
  @JsonKey()
  final int infoTabIndex;
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
  @override
  @JsonKey()
  final bool descriptionIsExpandable;
  @override
  @JsonKey()
  final bool characteristicsIsExpandable;
  @override
  final Favourite? favourites;

  @override
  String toString() {
    return 'FavouritesBuildableState(imageIndex: $imageIndex, cardProductCount: $cardProductCount, likeIds: $likeIds, infoTabIndex: $infoTabIndex, loading: $loading, success: $success, failure: $failure, errorMessage: $errorMessage, descriptionIsExpandable: $descriptionIsExpandable, characteristicsIsExpandable: $characteristicsIsExpandable, favourites: $favourites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouritesBuildableStateImpl &&
            (identical(other.imageIndex, imageIndex) ||
                other.imageIndex == imageIndex) &&
            (identical(other.cardProductCount, cardProductCount) ||
                other.cardProductCount == cardProductCount) &&
            const DeepCollectionEquality().equals(other._likeIds, _likeIds) &&
            (identical(other.infoTabIndex, infoTabIndex) ||
                other.infoTabIndex == infoTabIndex) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(
                    other.descriptionIsExpandable, descriptionIsExpandable) ||
                other.descriptionIsExpandable == descriptionIsExpandable) &&
            (identical(other.characteristicsIsExpandable,
                    characteristicsIsExpandable) ||
                other.characteristicsIsExpandable ==
                    characteristicsIsExpandable) &&
            (identical(other.favourites, favourites) ||
                other.favourites == favourites));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      imageIndex,
      cardProductCount,
      const DeepCollectionEquality().hash(_likeIds),
      infoTabIndex,
      loading,
      success,
      failure,
      errorMessage,
      descriptionIsExpandable,
      characteristicsIsExpandable,
      favourites);

  /// Create a copy of FavouritesBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouritesBuildableStateImplCopyWith<_$FavouritesBuildableStateImpl>
      get copyWith => __$$FavouritesBuildableStateImplCopyWithImpl<
          _$FavouritesBuildableStateImpl>(this, _$identity);
}

abstract class _FavouritesBuildableState implements FavouritesBuildableState {
  const factory _FavouritesBuildableState(
      {final int imageIndex,
      final int cardProductCount,
      final List<String> likeIds,
      final int infoTabIndex,
      final bool loading,
      final bool success,
      final bool failure,
      final String errorMessage,
      final bool descriptionIsExpandable,
      final bool characteristicsIsExpandable,
      final Favourite? favourites}) = _$FavouritesBuildableStateImpl;

  @override
  int get imageIndex;
  @override
  int get cardProductCount;
  @override
  List<String> get likeIds;
  @override
  int get infoTabIndex;
  @override
  bool get loading;
  @override
  bool get success;
  @override
  bool get failure;
  @override
  String get errorMessage;
  @override
  bool get descriptionIsExpandable;
  @override
  bool get characteristicsIsExpandable;
  @override
  Favourite? get favourites;

  /// Create a copy of FavouritesBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavouritesBuildableStateImplCopyWith<_$FavouritesBuildableStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
