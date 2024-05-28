
part of '../widgets/all_components.dart';

class FoodLoginPage extends StatelessWidget {
  const FoodLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => locator<LoginCubit>(),
        child: BlocListener<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state is LoginBuildableState) {
                if (state.success == true) {
                  AppUtils.msg(context, state.message ?? "Success",
                      color: Colors.green);
                  Navigator.pushNamed(context, FoodNavigatorConst.foodHome);
                }

                if (state.failure == true) {
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
                  child: const FoodLoginView(),
                );
              },
            )));
  }
}
