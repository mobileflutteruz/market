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
    UserResponse? userInfo,
    ProfileEditModel? userEdit,
    @Default(FoodProfileStatus.initial) FoodProfileStatus status,
    List? cards,
    @Default('') String imagePath,
  }) = _FoodProfileBuildableState;
}

enum FoodProfileStatus {
  initial,
  loading,
  success,
  failure,
}
