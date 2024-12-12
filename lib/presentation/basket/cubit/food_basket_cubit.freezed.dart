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
  List<int> get chooseIds => throw _privateConstructorUsedError;
  Map<int, int> get cardProducts => throw _privateConstructorUsedError;
  List<int> get cardProductIds => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  int get tabIndex => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  bool get isAllSelected => throw _privateConstructorUsedError;
  bool get isChoosedAll => throw _privateConstructorUsedError;
  Map<int, bool> get checkboxState => throw _privateConstructorUsedError;
  List<ProductData>? get products => throw _privateConstructorUsedError;
  CartResponse? get response => throw _privateConstructorUsedError;
  FoodBasketStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of FoodBasketBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      List<int> chooseIds,
      Map<int, int> cardProducts,
      List<int> cardProductIds,
      String errorMessage,
      int tabIndex,
      int quantity,
      bool isAllSelected,
      bool isChoosedAll,
      Map<int, bool> checkboxState,
      List<ProductData>? products,
      CartResponse? response,
      FoodBasketStatus status});

  $CartResponseCopyWith<$Res>? get response;
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

  /// Create a copy of FoodBasketBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? selectedIds = null,
    Object? chooseIds = null,
    Object? cardProducts = null,
    Object? cardProductIds = null,
    Object? errorMessage = null,
    Object? tabIndex = null,
    Object? quantity = null,
    Object? isAllSelected = null,
    Object? isChoosedAll = null,
    Object? checkboxState = null,
    Object? products = freezed,
    Object? response = freezed,
    Object? status = null,
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
      chooseIds: null == chooseIds
          ? _value.chooseIds
          : chooseIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      cardProducts: null == cardProducts
          ? _value.cardProducts
          : cardProducts // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      cardProductIds: null == cardProductIds
          ? _value.cardProductIds
          : cardProductIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      isAllSelected: null == isAllSelected
          ? _value.isAllSelected
          : isAllSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      isChoosedAll: null == isChoosedAll
          ? _value.isChoosedAll
          : isChoosedAll // ignore: cast_nullable_to_non_nullable
              as bool,
      checkboxState: null == checkboxState
          ? _value.checkboxState
          : checkboxState // ignore: cast_nullable_to_non_nullable
              as Map<int, bool>,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductData>?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as CartResponse?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FoodBasketStatus,
    ) as $Val);
  }

  /// Create a copy of FoodBasketBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartResponseCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $CartResponseCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
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
      List<int> chooseIds,
      Map<int, int> cardProducts,
      List<int> cardProductIds,
      String errorMessage,
      int tabIndex,
      int quantity,
      bool isAllSelected,
      bool isChoosedAll,
      Map<int, bool> checkboxState,
      List<ProductData>? products,
      CartResponse? response,
      FoodBasketStatus status});

  @override
  $CartResponseCopyWith<$Res>? get response;
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

  /// Create a copy of FoodBasketBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? selectedIds = null,
    Object? chooseIds = null,
    Object? cardProducts = null,
    Object? cardProductIds = null,
    Object? errorMessage = null,
    Object? tabIndex = null,
    Object? quantity = null,
    Object? isAllSelected = null,
    Object? isChoosedAll = null,
    Object? checkboxState = null,
    Object? products = freezed,
    Object? response = freezed,
    Object? status = null,
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
      chooseIds: null == chooseIds
          ? _value._chooseIds
          : chooseIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      cardProducts: null == cardProducts
          ? _value._cardProducts
          : cardProducts // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      cardProductIds: null == cardProductIds
          ? _value._cardProductIds
          : cardProductIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      isAllSelected: null == isAllSelected
          ? _value.isAllSelected
          : isAllSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      isChoosedAll: null == isChoosedAll
          ? _value.isChoosedAll
          : isChoosedAll // ignore: cast_nullable_to_non_nullable
              as bool,
      checkboxState: null == checkboxState
          ? _value._checkboxState
          : checkboxState // ignore: cast_nullable_to_non_nullable
              as Map<int, bool>,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductData>?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as CartResponse?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FoodBasketStatus,
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
      final List<int> chooseIds = const [],
      final Map<int, int> cardProducts = const {},
      final List<int> cardProductIds = const [],
      this.errorMessage = '',
      this.tabIndex = 0,
      this.quantity = 0,
      this.isAllSelected = false,
      this.isChoosedAll = false,
      final Map<int, bool> checkboxState = const {},
      final List<ProductData>? products,
      this.response,
      this.status = FoodBasketStatus.initial})
      : _selectedIds = selectedIds,
        _chooseIds = chooseIds,
        _cardProducts = cardProducts,
        _cardProductIds = cardProductIds,
        _checkboxState = checkboxState,
        _products = products;

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

  final List<int> _chooseIds;
  @override
  @JsonKey()
  List<int> get chooseIds {
    if (_chooseIds is EqualUnmodifiableListView) return _chooseIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chooseIds);
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
  final String errorMessage;
  @override
  @JsonKey()
  final int tabIndex;
  @override
  @JsonKey()
  final int quantity;
  @override
  @JsonKey()
  final bool isAllSelected;
  @override
  @JsonKey()
  final bool isChoosedAll;
  final Map<int, bool> _checkboxState;
  @override
  @JsonKey()
  Map<int, bool> get checkboxState {
    if (_checkboxState is EqualUnmodifiableMapView) return _checkboxState;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_checkboxState);
  }

  final List<ProductData>? _products;
  @override
  List<ProductData>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CartResponse? response;
  @override
  @JsonKey()
  final FoodBasketStatus status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FoodBasketBuildableState(currentIndex: $currentIndex, selectedIds: $selectedIds, chooseIds: $chooseIds, cardProducts: $cardProducts, cardProductIds: $cardProductIds, errorMessage: $errorMessage, tabIndex: $tabIndex, quantity: $quantity, isAllSelected: $isAllSelected, isChoosedAll: $isChoosedAll, checkboxState: $checkboxState, products: $products, response: $response, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FoodBasketBuildableState'))
      ..add(DiagnosticsProperty('currentIndex', currentIndex))
      ..add(DiagnosticsProperty('selectedIds', selectedIds))
      ..add(DiagnosticsProperty('chooseIds', chooseIds))
      ..add(DiagnosticsProperty('cardProducts', cardProducts))
      ..add(DiagnosticsProperty('cardProductIds', cardProductIds))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('tabIndex', tabIndex))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('isAllSelected', isAllSelected))
      ..add(DiagnosticsProperty('isChoosedAll', isChoosedAll))
      ..add(DiagnosticsProperty('checkboxState', checkboxState))
      ..add(DiagnosticsProperty('products', products))
      ..add(DiagnosticsProperty('response', response))
      ..add(DiagnosticsProperty('status', status));
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
                .equals(other._chooseIds, _chooseIds) &&
            const DeepCollectionEquality()
                .equals(other._cardProducts, _cardProducts) &&
            const DeepCollectionEquality()
                .equals(other._cardProductIds, _cardProductIds) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.isAllSelected, isAllSelected) ||
                other.isAllSelected == isAllSelected) &&
            (identical(other.isChoosedAll, isChoosedAll) ||
                other.isChoosedAll == isChoosedAll) &&
            const DeepCollectionEquality()
                .equals(other._checkboxState, _checkboxState) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentIndex,
      const DeepCollectionEquality().hash(_selectedIds),
      const DeepCollectionEquality().hash(_chooseIds),
      const DeepCollectionEquality().hash(_cardProducts),
      const DeepCollectionEquality().hash(_cardProductIds),
      errorMessage,
      tabIndex,
      quantity,
      isAllSelected,
      isChoosedAll,
      const DeepCollectionEquality().hash(_checkboxState),
      const DeepCollectionEquality().hash(_products),
      response,
      status);

  /// Create a copy of FoodBasketBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      final List<int> chooseIds,
      final Map<int, int> cardProducts,
      final List<int> cardProductIds,
      final String errorMessage,
      final int tabIndex,
      final int quantity,
      final bool isAllSelected,
      final bool isChoosedAll,
      final Map<int, bool> checkboxState,
      final List<ProductData>? products,
      final CartResponse? response,
      final FoodBasketStatus status}) = _$FoodBasketBuildableStateImpl;

  @override
  int get currentIndex;
  @override
  List<int> get selectedIds;
  @override
  List<int> get chooseIds;
  @override
  Map<int, int> get cardProducts;
  @override
  List<int> get cardProductIds;
  @override
  String get errorMessage;
  @override
  int get tabIndex;
  @override
  int get quantity;
  @override
  bool get isAllSelected;
  @override
  bool get isChoosedAll;
  @override
  Map<int, bool> get checkboxState;
  @override
  List<ProductData>? get products;
  @override
  CartResponse? get response;
  @override
  FoodBasketStatus get status;

  /// Create a copy of FoodBasketBuildableState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodBasketBuildableStateImplCopyWith<_$FoodBasketBuildableStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
