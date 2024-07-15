part of '../widgets/all_components.dart';

class FoodRegisterView extends StatefulWidget {
  const FoodRegisterView({super.key});

  @override
  State<FoodRegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<FoodRegisterView> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: LayoutBuilder(builder: (context, constraints) {
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FoodLogoWidget(),
                        Text(
                          context.l10n.signUp,
                          style: Styles.manropeBold20.copyWith(
                            color: FoodColors.c212121,
                          ),
                        ),
                        AppUtils.kGap16,
                        Text(
                          context.l10n.nameSurname,
                          style: Styles.manropeMedium14.copyWith(
                            color: FoodColors.c0E1923,
                          ),
                        ),
                        NameInputWidget(
                          hintText: context.l10n.enterYourFirstNameAndLastName,
                          textEditingController:
                              context.read<RegisterCubit>().nameController,
                          validator: (p0) =>
                              locator<AuthRepository>().nameValidator(p0!),
                        ),
                        AppUtils.kGap16,
                        Text(
                          context.l10n.phoneNumber,
                          style: Styles.manropeMedium14.copyWith(
                            color: FoodColors.c0E1923,
                          ),
                        ),
                        PhoneInputWidget(
                          hintText: context.l10n.enterPhoneNumber,
                          textEditingController:
                              context.read<RegisterCubit>().phoneController,
                          validator: (p0) =>
                              locator<AuthRepository>().phoneValidator(p0!),
                        ),
                        AppUtils.kGap16,
                        PasswordInputWidget(
                          title: context.l10n.password,
                          hintText: context.l10n.enterPassword,
                          textEditingController:
                              context.read<RegisterCubit>().passwordController,
                          validator: (p0) =>
                              locator<AuthRepository>().passWordvalidator(p0!),
                        ),
                        AppUtils.kGap16,
                        const FoodCheckBoxWidget(),
                        AppUtils.kGap24,
                        CommonFoodButtonWidget(
                          title: context.l10n.signUp,
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              context.read<RegisterCubit>().register();
                              Navigator.pushNamed(
                                context,
                                FoodNavigatorConst.foodOtpScreen,
                                arguments: phoneController.text,
                              );
                            }
                          },
                        ),
                      ],
                    ),
                    FoodCoupleTextWidget(
                      text: context.l10n.signIn,
                      onTap: () {
                        Navigator.pushNamed(
                            context, FoodNavigatorConst.foodLoginScreen);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
