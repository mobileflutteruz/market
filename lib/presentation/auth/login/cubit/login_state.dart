part of 'login_cubit.dart';

abstract class LoginState {}

@freezed
class LoginBuildableState extends LoginState with _$LoginBuildableState {
  factory LoginBuildableState({
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failure,
    @Default(null) String? message,
    dynamic error,
  }) = _LoginBuildableState;
}
