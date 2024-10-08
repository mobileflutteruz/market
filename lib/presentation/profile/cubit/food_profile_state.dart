part of 'food_profile_cubit.dart';

abstract class FoodProfileState {}

@freezed
class FoodProfileBuildableState extends FoodProfileState
    with _$FoodProfileBuildableState {
  const factory FoodProfileBuildableState({
    @Default(null) String? userName,
    @Default(false) bool notificationValue,
    @Default(null) UserModel? profileUser,
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failure,
    @Default('') String errorMessage,
    UserModel? user,
    UserInfo? userInfo,
    List? cards,
 
    dynamic token,
    @Default('') String imagePath,
  }) = _FoodProfileBuildableState;
  
}
