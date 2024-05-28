import 'package:karmango/core/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../core/constants/constants.dart';
import '../../../../core/utils/utils.dart';
import 'input.dart';

class CardInputWidget extends StatelessWidget {
  const CardInputWidget({super.key, this.cardNumberController});

  final TextEditingController? cardNumberController;

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
          hintText: "XXXX XXXX XXXX XXXX",
          textEditingController: cardNumberController,
          keyboardType: TextInputType.number,
          textInputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            CardNumberFormatter(),
            // LengthLimitingTextInputFormatter(19)
          ],
          lengthLimiting: 19,
        ),


      ],
    );
  }
}

class CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue previousValue,
    TextEditingValue nextValue,
  ) {
    var inputText = nextValue.text;

    if (nextValue.selection.baseOffset == 0) {
      return nextValue;
    }

    var bufferString = StringBuffer();
    for (int i = 0; i < inputText.length; i++) {
      bufferString.write(inputText[i]);
      var nonZeroIndexValue = i + 1;
      if (nonZeroIndexValue % 4 == 0 && nonZeroIndexValue != inputText.length) {
        bufferString.write(' ');
      }
    }

    var string = bufferString.toString();
    return nextValue.copyWith(
      text: string,
      selection: TextSelection.collapsed(
        offset: string.length,
      ),
    );
  }
}
