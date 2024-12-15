import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/core/utils/utils.dart';
import 'package:karmango/presentation/auth/otp/cubit/otp_cubit.dart';
import 'package:karmango/presentation/auth/widgets/app_logo.dart';
import 'package:karmango/presentation/auth/widgets/common_food_button.dart';
import 'package:karmango/presentation/profile/profile_otp/components/custom_pin.dart';

class FoodProfileOtpScreen extends StatefulWidget {
  const FoodProfileOtpScreen({super.key, required this.phoneNumber});
  final String phoneNumber;
  @override
  State<FoodProfileOtpScreen> createState() => _FoodProfileOtpScreenState();
}

class _FoodProfileOtpScreenState extends State<FoodProfileOtpScreen> {
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
                              context.read<OtpCubit>().verfysSms(
                                  widget.phoneNumber, controller.text);
                              Navigator.pushNamed(
                                context,
                                FoodNavigatorConst.foodProfileView,
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
