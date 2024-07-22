import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../user_session_manager.dart';
import 'app_init_state.dart';

@Injectable()
class AppInitCubit extends Cubit<AppInitState> {
  final UserSessionManager _userSessionManager;

  AppInitCubit(
    this._userSessionManager,
  ) : super(const AppInitLoadingState());

  Future<void> checkAuth() async {
    emit(const AppInitLoadingState());

    await Future.delayed(const Duration(seconds: 2));
    final isFirstRun = await _userSessionManager.isFirstRun();

    if (isFirstRun) {
      await _userSessionManager.clearUserSession();
    }

    final loggedIn = await _userSessionManager.isUserLoggedIn();
    // final userId = await _userSessionManager.getUserId();

    if (loggedIn) {
      emit(const AuthorizedState());
    } else {
      emit(const UnauthorizedState());
    }
  }
}
