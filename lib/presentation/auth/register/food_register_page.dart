part of '../widgets/all_components.dart';
class FoodRegisterPage extends StatelessWidget {
  const FoodRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => locator<RegisterCubit>(),
        child: BlocListener<RegisterCubit, RegisterState>(
          listener: (context, state) {
            if (state is RegisterBuildableState) {
              if (state.success == true) {
                AppUtils.msg(context, state.message ?? "Success",
                    color: Colors.green);
                Navigator.pushNamed(
                  context,
                  FoodNavigatorConst.foodOtpScreen,
                  arguments: context.read<RegisterCubit>().phoneController.text,
                );
              }

              if (state.failure == true) {
                AppUtils.msg(context, state.message ?? "Something went wrong",
                    color: Colors.red);
              }
            }
          },
          child: Buildable<RegisterCubit, RegisterState, RegisterBuildableState>(
            properties: (buildable) => [
              buildable.loading,
              buildable.failure,
              buildable.success,
              buildable.error,
            ],
            builder: (context, state) {
              return ModalProgressHUD(
                  inAsyncCall: state.loading,
                  child: const FoodRegisterView());
            },
          ),
        ),
      ),
    );
  }
}
