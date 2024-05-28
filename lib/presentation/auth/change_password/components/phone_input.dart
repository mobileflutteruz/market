part of 'const_comp.dart';

class FoodPhoneInput extends StatefulWidget {
  const FoodPhoneInput({super.key});

  @override
  State<FoodPhoneInput> createState() => _FoodPhoneInputState();
}

class _FoodPhoneInputState extends State<FoodPhoneInput> {
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: AppUtils.kPaddingAll16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FoodLogoWidget(),
            Text(context.l10n.passwordRecovery,
                style: Styles.manropeBold20.copyWith(
                  color: FoodColors.c212121,
                )),
            AppUtils.kGap16,
            PhoneInputWidget(
              textEditingController: phoneController,
              hintText: context.l10n.enterPhoneNumber,
              validator: (value) {
                return locator<AuthRepository>().phoneValidator(value!);
              },
            ),
            AppUtils.kGap24,
            CommonFoodButtonWidget(
              title: context.l10n.next,
              onTap: () => Navigator.pushNamed(
                  context, FoodNavigatorConst.foodReOtpScreen),
            ),
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
    );
  }
}
