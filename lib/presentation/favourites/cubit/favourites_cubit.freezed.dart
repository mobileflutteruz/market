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
  bool get descriptionIsExpandable => throw _privateConstructorUsedError;
  bool get characteristicsIsExpandable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
      bool descriptionIsExpandable,
      bool characteristicsIsExpandable});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageIndex = null,
    Object? cardProductCount = null,
    Object? likeIds = null,
    Object? infoTabIndex = null,
    Object? descriptionIsExpandable = null,
    Object? characteristicsIsExpandable = null,
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
      descriptionIsExpandable: null == descriptionIsExpandable
          ? _value.descriptionIsExpandable
          : descriptionIsExpandable // ignore: cast_nullable_to_non_nullable
              as bool,
      characteristicsIsExpandable: null == characteristicsIsExpandable
          ? _value.characteristicsIsExpandable
          : characteristicsIsExpandable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
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
      bool descriptionIsExpandable,
      bool characteristicsIsExpandable});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageIndex = null,
    Object? cardProductCount = null,
    Object? likeIds = null,
    Object? infoTabIndex = null,
    Object? descriptionIsExpandable = null,
    Object? characteristicsIsExpandable = null,
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
      descriptionIsExpandable: null == descriptionIsExpandable
          ? _value.descriptionIsExpandable
          : descriptionIsExpandable // ignore: cast_nullable_to_non_nullable
              as bool,
      characteristicsIsExpandable: null == characteristicsIsExpandable
          ? _value.characteristicsIsExpandable
          : characteristicsIsExpandable // ignore: cast_nullable_to_non_nullable
              as bool,
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
      this.descriptionIsExpandable = false,
      this.characteristicsIsExpandable = false})
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
  final bool descriptionIsExpandable;
  @override
  @JsonKey()
  final bool characteristicsIsExpandable;

  @override
  String toString() {
    return 'FavouritesBuildableState(imageIndex: $imageIndex, cardProductCount: $cardProductCount, likeIds: $likeIds, infoTabIndex: $infoTabIndex, descriptionIsExpandable: $descriptionIsExpandable, characteristicsIsExpandable: $characteristicsIsExpandable)';
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
            (identical(
                    other.descriptionIsExpandable, descriptionIsExpandable) ||
                other.descriptionIsExpandable == descriptionIsExpandable) &&
            (identical(other.characteristicsIsExpandable,
                    characteristicsIsExpandable) ||
                other.characteristicsIsExpandable ==
                    characteristicsIsExpandable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      imageIndex,
      cardProductCount,
      const DeepCollectionEquality().hash(_likeIds),
      infoTabIndex,
      descriptionIsExpandable,
      characteristicsIsExpandable);

  @JsonKey(ignore: true)
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
      final bool descriptionIsExpandable,
      final bool characteristicsIsExpandable}) = _$FavouritesBuildableStateImpl;

  @override
  int get imageIndex;
  @override
  int get cardProductCount;
  @override
  List<String> get likeIds;
  @override
  int get infoTabIndex;
  @override
  bool get descriptionIsExpandable;
  @override
  bool get characteristicsIsExpandable;
  @override
  @JsonKey(ignore: true)
  _$$FavouritesBuildableStateImplCopyWith<_$FavouritesBuildableStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
