part of 'change_cubit.dart';

abstract class CHangePasswordState {}

@freezed
class CHangePasswordBuildableState extends CHangePasswordState
    with _$CHangePasswordBuildableState {
  const factory CHangePasswordBuildableState({
    @Default(false) bool loading,
    @Default(false) bool success,
       @Default(false) bool isModal_hud,
    @Default(false) bool failure,
    dynamic error,
    UserModel? user,
    dynamic token,
  }) = _CHangePasswordBuildableState;
}
