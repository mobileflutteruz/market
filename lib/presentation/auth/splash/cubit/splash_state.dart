part of 'splash_cubit.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    @Default(0) int currentIndex,
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failure,
    String? message,
    @Default(false) bool navigateToHome,
    @Default(false) bool navigateToRegister,
  }) = _SplashState;
}
