import 'package:karmango/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class NumberInputPhone extends StatelessWidget {
  const NumberInputPhone({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var maskFormatter = MaskTextInputFormatter(
      mask: '## ### ## ##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy,
    );

    return Container(
      width: width * .9,
      height: height * .07,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          SizedBox(width: width * .03),
         IconConstants.phone,
          SizedBox(width: width * .03),
          const Text('+998',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white)),
          SizedBox(
            width: width * .6,
            child: TextFormField(
              controller: controller,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(9),
                maskFormatter
              ],
              decoration: const InputDecoration(
                hintText: '00 000 00 00',
                fillColor: Color.fromARGB(
                    0, 0, 0, 0), // Make the background transparent
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none, // Hide the border
                ),
              ),
              validator: (p0) {
                // return locator<AuthRepository>().phoneValidator(p0!); 
              },
            ),
          ),
        ],
      ),
    );
  }
}
