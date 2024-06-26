part of 'register_cubit.dart';

abstract class RegisterState {}

@freezed
class RegisterBuildableState extends RegisterState
    with _$RegisterBuildableState {
  const factory RegisterBuildableState({
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failure,
    dynamic error,
  }) = _RegisterBuildableState;
}
