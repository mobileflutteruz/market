part of 'food_home_cubit.dart';

abstract class FoodHomeState {}

@freezed
class FoodHomeBuildableState extends FoodHomeState
    with _$FoodHomeBuildableState {
  const factory FoodHomeBuildableState({
    @Default(false) bool loading,
    @Default(false) bool isModal_hud,
    @Default(false) bool success,
    @Default(false) bool failed,
    dynamic error,
    @Default(0) int imageIndex,
    @Default(0) int cardProductCount,

    @Default([]) List<String> likeIds,
    @Default(0)  int infoTabIndex,
    @Default(false)  bool descriptionIsExpandable,
    @Default(false)  bool characteristicsIsExpandable,

    @Default(false) bool isSuccess,
    @Default(false) bool isUser,
    @Default(0) int currentIndex,
    @Default([]) List data,
    @Default(0 ) int count,
    MobileHomeProducts? homeProducts,
    MobileHomeProducts? banner,
    ProductDataModel? product,

  }) = _FoodHomeBuildableState;
}
