part of '../widgets/all_components.dart';

class FoodChangePasswordPage extends StatelessWidget {
  const FoodChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<ChangePasswordCubit>(),
      child: BlocListener<ChangePasswordCubit, ChangePasswordState>(
        listener: (context, state) {
          if (state is ChangePasswordBuildableState) {
            if (state.success == true) {
              AppUtils.msg(context, state.message ?? "Success",
                  color: Colors.green);
              print(
                  'success-----------------------------------------------------------');
              // Navigator.pushNamed(context, NavigatorConst.home);
            }

            if (state.failure == true) {
              print(
                  'failure-----------------------------------------------------------');

              AppUtils.msg(context, state.message ?? "Something went wrong",
                  color: Colors.red);
            }
          }
        },
        child: Buildable<LoginCubit, LoginState, LoginBuildableState>(
          properties: (buildable) => [
            buildable.loading,
            buildable.failure,
            buildable.success,
            buildable.error,
          ],
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state.loading,
                // dismissible: true,
                child: const FoodRegisterView());
          },
        ),
      ),
    );
  }
}
