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
    dynamic token,
    dynamic error,
    UserModel? user,
    ProfileModel? userInfo,
    List? cards,
 

    @Default('') String imagePath,
  }) = _FoodProfileBuildableState;
  
}
class FoodProfileInitial extends FoodProfileState {}
class FoodProfileGuest extends FoodProfileState {}
class FoodProfileLoggedIn extends FoodProfileState {
  final UserModel user;
  FoodProfileLoggedIn({required this.user});
}