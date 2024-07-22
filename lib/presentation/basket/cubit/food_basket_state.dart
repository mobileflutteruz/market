part of 'food_basket_cubit.dart';

abstract class FoodBasketState {}

@freezed
class FoodBasketBuildableState extends FoodBasketState
    with _$FoodBasketBuildableState {
  const factory FoodBasketBuildableState({
    @Default(0) int currentIndex,
    @Default([]) List<int> selectedIds,
    @Default({}) Map<int, int> cardProducts,
    @Default([]) List<int> cardProductIds,
        @Default('') String errorMessage,
    @Default(0) int tabIndex,
    @Default(false) bool isChoosedAll,
    @Default(false) bool loading,
    BasketProducts? products,
    // @Default(false) bool isModal_hud,
    @Default(false) bool success,
    @Default(false) bool failed,
    @Default(false) bool error,
  }) = _FoodBasketBuildableState;
}
