part of 'otp_cubit.dart';

abstract class OtpState {}

@freezed
class OtpBuildableState extends OtpState
    with _$OtpBuildableState {
  const factory OtpBuildableState({
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failed,
    dynamic error,
  }) = _OtpBuildableState;
}
