import 'package:karmango/core/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/constants/constants.dart';
import '../../../../core/utils/utils.dart';
import 'input.dart';

class ExpirationDateInputWidget extends StatelessWidget {
  const ExpirationDateInputWidget({
    super.key,
    this.expirationDateController,
  });

  final TextEditingController? expirationDateController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.cardNumber,
          style: Styles.manropeMedium14.copyWith(
            color: FoodColors.c7C8A9D,
          ),
        ),
        AppUtils.kGap8,
        InputWidget(
          textEditingController: expirationDateController,
          hintText: "mm/yy",
          keyboardType: TextInputType.number,
          textInputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            ExpireDateFormatter(separator: '/'),
          ],
          lengthLimiting: 5,
        ),
      ],
    );
  }
}

class ExpireDateFormatter extends TextInputFormatter {
  final String separator;

  ExpireDateFormatter({required this.separator});

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue previousValue,
    TextEditingValue nextValue,
  ) {
    var text = nextValue.text;
    if (text.length == 1 && int.parse(text) > 1) {
      // Ensure the first digit (month) is not greater than 1
      text = '0$text$separator';
    } else if (text.length == 2 && int.parse(text) > 12) {
      // Ensure the entered month is valid (not greater than 12)
      text = '12$separator';
    } else if (text.length > 2) {
      text = '${text.substring(0, 2)}$separator${text.substring(2)}';
    }
    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}
