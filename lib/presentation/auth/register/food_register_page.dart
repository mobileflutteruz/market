
part of '../widgets/all_components.dart';

class FoodRegisterPage extends StatelessWidget {
  const FoodRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BlocProvider(
        create: (context) => locator<RegisterCubit>(),
        child: BlocListener<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state is LoginBuildableState) {
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
                child: const FoodRegisterView()
              );
            },
          ),
        ),
      ),
    );
  }
}
