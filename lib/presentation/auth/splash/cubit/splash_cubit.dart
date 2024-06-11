import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/domain/repository/auth_repository.dart';
import 'package:karmango/presentation/components/buildable_cubit.dart';
import 'package:karmango/data/preferences/token_preferences.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

@Injectable()
class SplashCubit extends BuildableCubit<SplashState, SplashState> {
  SplashCubit(this._authRepository, this._tokenPreference)
      : super(const SplashState());

  final AuthRepository _authRepository;
  final TokenPreference _tokenPreference;

  Future<void> checkAndNavigate() async {
    build((buildable) => buildable.copyWith(loading: true));
    try {
      final accessToken = await _tokenPreference.getGuestUser();
      if (accessToken != null) {
        // Access token mavjud, foydalanuvchini home pagega o'tkazamiz
        build((buildable) => buildable.copyWith(
          loading: false,
          navigateToHome: true,
        ));
      } else {
        // Access token mavjud emas, ro'yxatdan o'tish sahifasiga o'tkazamiz
        build((buildable) => buildable.copyWith(
          loading: false,
          navigateToRegister: true,
        ));
      }
    } catch (e) {
      build((buildable) => buildable.copyWith(
        loading: false,
        failure: true,
        message: "Error",
      ));
    }
  }
}
