part of 'food_basket_cubit.dart';


abstract class FoodBasketState{}

@freezed
class FoodBasketBuildableState extends FoodBasketState with _$FoodBasketBuildableState{
  const factory FoodBasketBuildableState({
    @Default(0) int currentIndex,
    @Default([]) List<int> selectedIds,
    @Default({}) Map<int,int> cardProducts,
    @Default([]) List<int> cardProductIds,
    @Default(0) int tabIndex,
    @Default(false) bool isChoosedAll,
     



  })=_FoodBasketBuildableState;
}