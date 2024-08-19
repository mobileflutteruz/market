import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/domain/repository/auth_repository.dart';
import 'package:karmango/presentation/components/buildable_cubit.dart';

part 'otp_state.dart';
part 'otp_cubit.freezed.dart';

@Injectable()
class OtpCubit extends BuildableCubit<OtpState, OtpBuildableState> {
  OtpCubit(this._authRepository) : super(const OtpBuildableState());

  final AuthRepository _authRepository;

  verfysSms(String phone, String code) async {
    build(
      (buildable) => buildable.copyWith(loading: true, failed: false),
    );
    try {
      await _authRepository.verifySms(phone, code);
      build((buildable) =>
          buildable.copyWith(success: true, loading: false, failed: false));
    } catch (e) {
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          failed: true,
          error: e.toString(),
        ),
      );
    }
  }
}
