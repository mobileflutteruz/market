
part of 'const_comp.dart';


class FoodReOtpScreen extends StatefulWidget {
  const FoodReOtpScreen({
    super.key,
  });
  // final String? phoneNumber;
  @override
  State<FoodReOtpScreen> createState() => _OtpScreenState();
}

TextEditingController otpController = TextEditingController();

class _OtpScreenState extends State<FoodReOtpScreen> {
  
  late FocusNode otpFocusNode;
  @override
  void initState() {
    super.initState();
    otpFocusNode = FocusNode();
  }

  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    otpFocusNode.dispose();
    super.dispose();
  }

  bool showError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: AppSizes.getH(context, .06)),
            FoodLogoWidget(),
          SizedBox(height: AppSizes.getH(context, .07)),
          _customPin(),
          SizedBox(height: AppSizes.getH(context, .03)),
          Padding(
            padding: AppUtils.kPaddingHorizontal16,
            child: CommonFoodButtonWidget(title:  context.l10n.next,onTap: (){
              Navigator.pushNamed(context, FoodNavigatorConst.foodChangePassword);

            },),
          )


        ]),
      ),
    );
  }

  Widget _customPin() {
    return FoodCustomPin(
      controller: controller,
      otpFocusNode: otpFocusNode,
      phone: "",
    );
  }
}
