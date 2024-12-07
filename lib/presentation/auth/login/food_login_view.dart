part of '../widgets/all_components.dart';

class FoodLoginView extends StatefulWidget {
  const FoodLoginView({super.key});

  @override
  State<FoodLoginView> createState() => _FoodLoginView();
}

class _FoodLoginView extends State<FoodLoginView> {
  
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
                  padding: EdgeInsets.all(AppSizes.getH(context, .02)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const FoodLogoWidget(),
                          Text(
                            context.l10n.signIn,
                            style: Styles.manropeBold20.copyWith(
                              color: FoodColors.c212121,
                            ),
                          ),
                          AppUtils.kGap24,
                          Text(
                            context.l10n.phoneNumber,
                            style: Styles.manropeMedium14.copyWith(
                              color: FoodColors.c0E1923,
                            ),
                          ),
                          AppUtils.kGap16,
                          PhoneInputWidget(
                            textEditingController: phoneController,
                            hintText: context.l10n.enterPhoneNumber,
                            validator: (value) {
                              return locator<AuthRepository>()
                                  .phoneValidator(value);
                            },
                          ),
                          AppUtils.kGap24,
                          
                          PasswordInputWidget(
                            textEditingController: passwordController,
                            hintText: context.l10n.enterPassword,
                            validator: (value) {
                              return locator<AuthRepository>()
                                  .passWordvalidator(value!);
                            },
                            title: context.l10n.password,
                          ),
                          AppUtils.kGap16,
                          Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  FoodNavigatorConst.foodPhoneInput,
                                );
                              },
                              child: Text(
                                context.l10n.forgotPassword,
                                textAlign: TextAlign.center,
                                style: Styles.manropeMedium13.copyWith(
                                  color: FurnitureColors.c0057FF,
                                ),
                              ),
                            ),
                          ),
                          AppUtils.kGap16,
                          CommonFoodButtonWidget(
                            title: context.l10n.enter,
                            onTap: () async {
                              if (formKey.currentState!.validate()) {
                                BlocProvider.of<LoginCubit>(context).login(
                                  phone: phoneController.text.trim(),
                                  password: passwordController.text.trim(),
                                );
                              }
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FoodCoupleTextWidget(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                FoodNavigatorConst.foodRegisterScreen,
                              );
                            },
                            text: context.l10n.signUp,
                          ),
                          TextButton(
                            onPressed: () {
                              context.read<LoginCubit>().createGuest(context);
                            },
                            child: const Text('next'),
                          ),
                        ],
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
}
