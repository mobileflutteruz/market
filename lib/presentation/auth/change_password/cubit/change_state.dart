part of 'change_cubit.dart';

abstract class ChangePasswordState {}

@freezed
class ChangePasswordBuildableState extends ChangePasswordState
    with _$ChangePasswordBuildableState {
  const factory ChangePasswordBuildableState({
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool isModal_hud,
    @Default(null) String? message,

    @Default(false) bool failure,
    dynamic error,
    UserModel? user,
    dynamic token,
  }) = _ChangePasswordBuildableState;
}
