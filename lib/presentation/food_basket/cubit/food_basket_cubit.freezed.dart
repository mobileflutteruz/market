// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_basket_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FoodBasketBuildableState {
  int get currentIndex => throw _privateConstructorUsedError;
  List<int> get selectedIds => throw _privateConstructorUsedError;
  Map<int, int> get cardProducts => throw _privateConstructorUsedError;
  List<int> get cardProductIds => throw _privateConstructorUsedError;
  int get tabIndex => throw _privateConstructorUsedError;
  bool get isChoosedAll => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodBasketBuildableStateCopyWith<FoodBasketBuildableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodBasketBuildableStateCopyWith<$Res> {
  factory $FoodBasketBuildableStateCopyWith(FoodBasketBuildableState value,
          $Res Function(FoodBasketBuildableState) then) =
      _$FoodBasketBuildableStateCopyWithImpl<$Res, FoodBasketBuildableState>;
  @useResult
  $Res call(
      {int currentIndex,
      List<int> selectedIds,
      Map<int, int> cardProducts,
      List<int> cardProductIds,
      int tabIndex,
      bool isChoosedAll});
}

/// @nodoc
class _$FoodBasketBuildableStateCopyWithImpl<$Res,
        $Val extends FoodBasketBuildableState>
    implements $FoodBasketBuildableStateCopyWith<$Res> {
  _$FoodBasketBuildableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? selectedIds = null,
    Object? cardProducts = null,
    Object? cardProductIds = null,
    Object? tabIndex = null,
    Object? isChoosedAll = null,
  }) {
    return _then(_value.copyWith(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedIds: null == selectedIds
          ? _value.selectedIds
          : selectedIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      cardProducts: null == cardProducts
          ? _value.cardProducts
          : cardProducts // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      cardProductIds: null == cardProductIds
          ? _value.cardProductIds
          : cardProductIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isChoosedAll: null == isChoosedAll
          ? _value.isChoosedAll
          : isChoosedAll // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodBasketBuildableStateImplCopyWith<$Res>
    implements $FoodBasketBuildableStateCopyWith<$Res> {
  factory _$$FoodBasketBuildableStateImplCopyWith(
          _$FoodBasketBuildableStateImpl value,
          $Res Function(_$FoodBasketBuildableStateImpl) then) =
      __$$FoodBasketBuildableStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentIndex,
      List<int> selectedIds,
      Map<int, int> cardProducts,
      List<int> cardProductIds,
      int tabIndex,
      bool isChoosedAll});
}

/// @nodoc
class __$$FoodBasketBuildableStateImplCopyWithImpl<$Res>
    extends _$FoodBasketBuildableStateCopyWithImpl<$Res,
        _$FoodBasketBuildableStateImpl>
    implements _$$FoodBasketBuildableStateImplCopyWith<$Res> {
  __$$FoodBasketBuildableStateImplCopyWithImpl(
      _$FoodBasketBuildableStateImpl _value,
      $Res Function(_$FoodBasketBuildableStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? selectedIds = null,
    Object? cardProducts = null,
    Object? cardProductIds = null,
    Object? tabIndex = null,
    Object? isChoosedAll = null,
  }) {
    return _then(_$FoodBasketBuildableStateImpl(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedIds: null == selectedIds
          ? _value._selectedIds
          : selectedIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      cardProducts: null == cardProducts
          ? _value._cardProducts
          : cardProducts // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      cardProductIds: null == cardProductIds
          ? _value._cardProductIds
          : cardProductIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isChoosedAll: null == isChoosedAll
          ? _value.isChoosedAll
          : isChoosedAll // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FoodBasketBuildableStateImpl
    with DiagnosticableTreeMixin
    implements _FoodBasketBuildableState {
  const _$FoodBasketBuildableStateImpl(
      {this.currentIndex = 0,
      final List<int> selectedIds = const [],
      final Map<int, int> cardProducts = const {},
      final List<int> cardProductIds = const [],
      this.tabIndex = 0,
      this.isChoosedAll = false})
      : _selectedIds = selectedIds,
        _cardProducts = cardProducts,
        _cardProductIds = cardProductIds;

  @override
  @JsonKey()
  final int currentIndex;
  final List<int> _selectedIds;
  @override
  @JsonKey()
  List<int> get selectedIds {
    if (_selectedIds is EqualUnmodifiableListView) return _selectedIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedIds);
  }

  final Map<int, int> _cardProducts;
  @override
  @JsonKey()
  Map<int, int> get cardProducts {
    if (_cardProducts is EqualUnmodifiableMapView) return _cardProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cardProducts);
  }

  final List<int> _cardProductIds;
  @override
  @JsonKey()
  List<int> get cardProductIds {
    if (_cardProductIds is EqualUnmodifiableListView) return _cardProductIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cardProductIds);
  }

  @override
  @JsonKey()
  final int tabIndex;
  @override
  @JsonKey()
  final bool isChoosedAll;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FoodBasketBuildableState(currentIndex: $currentIndex, selectedIds: $selectedIds, cardProducts: $cardProducts, cardProductIds: $cardProductIds, tabIndex: $tabIndex, isChoosedAll: $isChoosedAll)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FoodBasketBuildableState'))
      ..add(DiagnosticsProperty('currentIndex', currentIndex))
      ..add(DiagnosticsProperty('selectedIds', selectedIds))
      ..add(DiagnosticsProperty('cardProducts', cardProducts))
      ..add(DiagnosticsProperty('cardProductIds', cardProductIds))
      ..add(DiagnosticsProperty('tabIndex', tabIndex))
      ..add(DiagnosticsProperty('isChoosedAll', isChoosedAll));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodBasketBuildableStateImpl &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            const DeepCollectionEquality()
                .equals(other._selectedIds, _selectedIds) &&
            const DeepCollectionEquality()
                .equals(other._cardProducts, _cardProducts) &&
            const DeepCollectionEquality()
                .equals(other._cardProductIds, _cardProductIds) &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex) &&
            (identical(other.isChoosedAll, isChoosedAll) ||
                other.isChoosedAll == isChoosedAll));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentIndex,
      const DeepCollectionEquality().hash(_selectedIds),
      const DeepCollectionEquality().hash(_cardProducts),
      const DeepCollectionEquality().hash(_cardProductIds),
      tabIndex,
      isChoosedAll);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodBasketBuildableStateImplCopyWith<_$FoodBasketBuildableStateImpl>
      get copyWith => __$$FoodBasketBuildableStateImplCopyWithImpl<
          _$FoodBasketBuildableStateImpl>(this, _$identity);
}

abstract class _FoodBasketBuildableState implements FoodBasketBuildableState {
  const factory _FoodBasketBuildableState(
      {final int currentIndex,
      final List<int> selectedIds,
      final Map<int, int> cardProducts,
      final List<int> cardProductIds,
      final int tabIndex,
      final bool isChoosedAll}) = _$FoodBasketBuildableStateImpl;

  @override
  int get currentIndex;
  @override
  List<int> get selectedIds;
  @override
  Map<int, int> get cardProducts;
  @override
  List<int> get cardProductIds;
  @override
  int get tabIndex;
  @override
  bool get isChoosedAll;
  @override
  @JsonKey(ignore: true)
  _$$FoodBasketBuildableStateImplCopyWith<_$FoodBasketBuildableStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
