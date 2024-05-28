part of 'food_my_order_cubit.dart';
abstract class FoodMyOrderState{}

@freezed
class FoodMyOrderBuildableState extends FoodMyOrderState  with _$FoodMyOrderBuildableState {
  const factory FoodMyOrderBuildableState({
    @Default(false) bool notificationValue,
    @Default(0) int agreementCardIndex,
    @Default(0) int agreementPaymentIndex,
    @Default(0) int currentIndex,
    @Default([]) List<int> selectedIds,
    @Default({}) Map<int,int> cardProducts,
    @Default([]) List<int> cardProductIds,
    @Default(0) int tabIndex,




  }) = _FoodMyOrderBuildableState;
}
