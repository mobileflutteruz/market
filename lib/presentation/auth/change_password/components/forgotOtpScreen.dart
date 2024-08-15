import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/core/utils/utils.dart';
import 'package:karmango/presentation/auth/change_password/cubit/change_cubit.dart';
import 'package:karmango/presentation/auth/otp/components/custom_pin.dart';
import 'package:karmango/presentation/auth/widgets/app_logo.dart';
import 'package:karmango/presentation/auth/widgets/common_food_button.dart';

class ForgotOtpScreen extends StatefulWidget {
  const ForgotOtpScreen({super.key, required this.phoneNumber});
  final String phoneNumber;
  @override
  State<ForgotOtpScreen> createState() => _FoodOtpScreenState();
}

class _FoodOtpScreenState extends State<ForgotOtpScreen> {
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
                        onTap: () {
                          context
                              .read<ChangePasswordCubit>()
                              .verifySms(widget.phoneNumber, controller.text);
                          Navigator.pushNamed(
                              context, FoodNavigatorConst.foodChangePassword);
                        }),
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
