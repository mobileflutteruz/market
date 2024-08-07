

part of '../widgets/all_components.dart';

class FoodChangePasswordView extends StatefulWidget {
  const FoodChangePasswordView({super.key});

  @override
  State<FoodChangePasswordView> createState() =>
      _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<FoodChangePasswordView> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: constraints.maxWidth,
                minHeight: constraints.maxHeight),
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
                          color:  FoodColors.c212121,
                        ),
                      ),
                      AppUtils.kGap16,
                      PasswordInputWidget(
                        textEditingController: passwordController,
                        title: context.l10n.newPassword,
                        hintText: context.l10n.enterPassword,
                        validator: (p0) {
                          return null;
                        
                          
                        },
                      ),
                      AppUtils.kGap16,
                      PasswordInputWidget(
                        textEditingController: repasswordController,
                        title: context.l10n.reEnterTheNewPassword,
                        hintText: context.l10n.enterPassword,
                         validator: (p0) {
                           return null;
                         
                          
                        },
                      ),
                      AppUtils.kGap24,
                      CommonFoodButtonWidget(
                        title: context.l10n.save,
                        onTap: (){
                          
                        },
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: FoodCoupleTextWidget(
                      text: context.l10n.signIn,
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
