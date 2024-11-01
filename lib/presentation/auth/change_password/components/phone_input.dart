import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/config/di/injection.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/core/utils/utils.dart';
import 'package:karmango/domain/repository/auth_repository.dart';
import 'package:karmango/presentation/auth/change_password/forgot_otp/forgotOtpScreen.dart';
import 'package:karmango/presentation/auth/change_password/cubit/change_cubit.dart';
import 'package:karmango/presentation/auth/widgets/app_logo.dart';
import 'package:karmango/presentation/auth/widgets/common_food_button.dart';
import 'package:karmango/presentation/components/phone_input.dart';

class FoodPhoneInput extends StatefulWidget {
  const FoodPhoneInput({super.key});

  @override
  State<FoodPhoneInput> createState() => _FoodPhoneInputState();
}

class _FoodPhoneInputState extends State<FoodPhoneInput> {
  TextEditingController phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Form(
        key: formKey,
        child: Padding(
          padding: AppUtils.kPaddingAll16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FoodLogoWidget(),
              Text(context.l10n.passwordRecovery,
                  style: Styles.manropeBold20.copyWith(
                    color: FoodColors.c212121,
                  )),
              AppUtils.kGap16,
              PhoneInputWidget(
                textEditingController: phoneController,
                hintText: context.l10n.enterPhoneNumber,
                validator: (value) {
                  // return "Hello Mello Yello";
                  return locator<AuthRepository>().phoneValidator(value!);
                },
              ),
              AppUtils.kGap24,
              CommonFoodButtonWidget(
                  title: context.l10n.next,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      context.read<ChangePasswordCubit>().change(
                            number: phoneController.text,
                          );
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ForgotOtpScreen(
                                  phoneNumber: phoneController.text)));
                      // Navigator.pushNamed(
                      //   context,
                      //   FoodNavigatorConst.forgotOtpScreen,
                      //   arguments: phoneController.text,
                      // );
                    }
                  }),
              const Spacer(),
              Align(
                alignment: Alignment.center,
                child: SafeArea(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: context.l10n.dontHaveAn,
                          style: Styles.manropeMedium15
                              .copyWith(color: FoodColors.c212121),
                        ),
                        TextSpan(
                          text: context.l10n.signUp,
                          style: Styles.manropeBold15
                              .copyWith(color: FoodColors.primaryColor),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
