part of 'food_basket_cubit.dart';

abstract class FoodBasketState {}

@freezed
class FoodBasketBuildableState extends FoodBasketState
    with _$FoodBasketBuildableState {
  const factory FoodBasketBuildableState({
    @Default(0) int currentIndex,
    @Default([]) List<int> selectedIds,
    @Default([]) List<int> chooseIds,
    @Default({}) Map<int, int> cardProducts,
    @Default([]) List<int> cardProductIds,
    @Default('') String errorMessage,
    @Default(0) int tabIndex,
    @Default(0) int quantity,
    @Default(false) bool isAllSelected,
    @Default(false) bool isChoosedAll,
    @Default({}) Map<int, bool> checkboxState,
    List<ProductData>? products,
    CartResponse? response,
    @Default(FoodBasketStatus.initial) FoodBasketStatus status,
  }) = _FoodBasketBuildableState;
}

enum FoodBasketStatus { initial, loading, success, failure }
