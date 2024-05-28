part of 'food_profile_cubit.dart';

abstract class FoodProfileState {}

@freezed
class FoodProfileBuildableState extends FoodProfileState
    with _$FoodProfileBuildableState {
  const factory FoodProfileBuildableState({
    @Default(null) String? userName,
    @Default(false) bool notificationValue,
    @Default(null) UserModel? profileUser,

  }) = _FoodProfileBuildableState;
}
