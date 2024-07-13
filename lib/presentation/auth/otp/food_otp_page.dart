
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
                      _customPin(),
                    ],
                  ),
                  Padding(
                    padding: AppUtils.kPaddingAll16,
                    child: CommonFoodButtonWidget(
                      title: context.l10n.next,
                      onTap: () => Navigator.pushNamed(
                          context, FoodNavigatorConst.foodChangePassword),
                    ),
                  )
                ]),
          ),
        );
      }),
    );
  }

  Widget _customPin() {
    return FoodCustomPin(
       controller: controller,
      otpFocusNode: otpFocusNode,
      phone: widget.phoneNumber,
    );
  }
}
