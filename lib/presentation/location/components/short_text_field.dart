import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ShortTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final TextEditingController controller;

  ShortTextField(
      {super.key,
      required this.title,
      required this.controller,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          style: Styles.manropeMedium14,
        ),
        const Gap(8),
        SizedBox(
          height: AppLayout.getHeight(54, context),
          width: AppLayout.getWidth(160, context),
          child: TextFormField(
            controller: controller,
            keyboardType: TextInputType.phone,
            style: Styles.manropeMedium15.copyWith(
              color: ColorConstants.c212121,
            ),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: Styles.manropeMedium15.copyWith(
                color: ColorConstants.c7C8A9D,
              ),
              filled: true,
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                // borderSide: BorderSide(color: Colors.blue),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
                borderSide: BorderSide(
                  color: ColorConstants.cFAFAFA,
                ),
              ),
              fillColor: ColorConstants.cFAFAFA,
            ),
          ),
        ),
      ],
    );
  }
}
