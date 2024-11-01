part of '../widgets/all_components.dart';

class FoodOtpScreen extends StatefulWidget {
  const FoodOtpScreen({super.key, required this.phoneNumber});
  final String phoneNumber;
  @override
  State<FoodOtpScreen> createState() => _FoodOtpScreenState();
}

class _FoodOtpScreenState extends State<FoodOtpScreen> {
  late FocusNode otpFocusNode;

  @override
  void initState() {
    super.initState();
    otpFocusNode = FocusNode();
  }

  final controller = TextEditingController();
final formKey = GlobalKey<FormState>();
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
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: Form(
          key: formKey,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  minWidth: constraints.maxWidth,
                  minHeight: constraints.maxHeight),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const FoodLogoWidget(),
                        SizedBox(height: AppSizes.getH(context, .07)),
                        _customPin(controller),
                      ],
                    ),
                    Padding(
                      padding: AppUtils.kPaddingAll16,
                      child: CommonFoodButtonWidget(
                          title: context.l10n.next,
                          onTap: () {
                             if (formKey.currentState!.validate()) {
                                context.read<OtpCubit>().verfysSms(widget.phoneNumber, controller.text);
                                Navigator.pushNamed(
                                  context,
                                  FoodNavigatorConst.foodLoginScreen,
                                  arguments: controller.text,
                                );
                              }
                       
                          }),
                    )
                  ]),
            ),
          ),
        );
      }),
    );
  }

  Widget _customPin(TextEditingController controller) {
    return FoodCustomPin(
      controller: controller,
      otpFocusNode: otpFocusNode,
      phone: widget.phoneNumber,
    );
  }
}
