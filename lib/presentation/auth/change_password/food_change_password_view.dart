part of '../widgets/all_components.dart';

class FoodChangePasswordView extends StatefulWidget {
  const FoodChangePasswordView({super.key});

  @override
  State<FoodChangePasswordView> createState() => _FoodChangePasswordViewState();
}

class _FoodChangePasswordViewState extends State<FoodChangePasswordView> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: constraints.maxWidth,
                minHeight: constraints.maxHeight,
              ),
              child: Form(
                key: formKey,
                child: Padding(
                  padding: AppUtils.kPaddingAll16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const FoodLogoWidget(),
                          Text(
                            context.l10n.passwordUpdate,
                            style: Styles.manropeBold20.copyWith(
                              color: FoodColors.c212121,
                            ),
                          ),
                          AppUtils.kGap16,
                          PasswordInputWidget(
                            textEditingController: passwordController,
                            title: context.l10n.newPassword,
                            hintText: context.l10n.enterPassword,
                            validator: (value) {
                              return locator<AuthRepository>()
                                  .passWordvalidator(value!);
                            },
                          ),
                          AppUtils.kGap16,
                          PasswordInputWidget(
                            textEditingController: repasswordController,
                            title: context.l10n.reEnterTheNewPassword,
                            hintText: context.l10n.enterPassword,
                            validator: (value) {
                              return locator<AuthRepository>()
                                  .confirmationValidator(
                                repasswordController.text,
                                value!,
                              );
                            },
                          ),
                          AppUtils.kGap24,
                          CommonFoodButtonWidget(
                            title: context.l10n.save,
                            onTap: () {
                              // print(TokenPreference().getUserSmsId());
                              if (formKey.currentState!.validate()) {
                                context
                                    .read<ChangePasswordCubit>()
                                    .resetPassword(
                                      passwordController.text,
                                      repasswordController.text,
                                    );
                                // Navigator.pushNamed(
                                //   context,
                                //   FoodNavigatorConst.foodLoginScreen,
                                //   arguments: passwordController.text,
                                // );
                              }
                            },
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: FoodCoupleTextWidget(
                          text: context.l10n.signIn,
                          onTap: () {
                            // Add navigation or logic if needed here
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    // Dispose the controllers to avoid memory leaks
    passwordController.dispose();
    repasswordController.dispose();
    super.dispose();
  }
}
