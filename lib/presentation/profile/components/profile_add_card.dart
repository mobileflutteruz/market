import 'package:karmango/config/di/injection.dart';
import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/data/locale_db/food_db.dart';
import 'package:karmango/domain/model/user/card/card_model.dart';

import 'package:karmango/domain/repository/auth_repository.dart';
import 'package:karmango/presentation/auth/widgets/common_food_button.dart';
import 'package:karmango/presentation/components/card_input.dart';
import 'package:karmango/presentation/components/common_app_bar.dart';
import 'package:karmango/presentation/components/expiration_date_input.dart';

import 'package:karmango/core/extension/context_extension.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../components/phone_input.dart';

class FoodProfileAddCardPage extends StatefulWidget {
  const FoodProfileAddCardPage({super.key});

  @override
  State<FoodProfileAddCardPage> createState() => _FoodProfileAddCardPageState();
}

class _FoodProfileAddCardPageState extends State<FoodProfileAddCardPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController cardController = TextEditingController();
    TextEditingController expirationDateController = TextEditingController();
    TextEditingController phoneInputController = TextEditingController();
    return Scaffold(
      appBar: CommonAppBar(
        title: context.l10n.myCards,
        backOnTap: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: AppUtils.kPaddingAll16,
        child: Column(
          children: [
            CardInputWidget(
              cardNumberController: cardController,
            ),
            AppUtils.kGap20,
            ExpirationDateInputWidget(
              expirationDateController: expirationDateController,
            ),
            AppUtils.kGap20,
            PhoneInputWidget(
              textEditingController: phoneInputController,
              // isRequired: false,
              hintText: context.l10n.enterPhoneNumber,
              validator: (value) {
                return locator<AuthRepository>().phoneValidator(value!);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: AppUtils.kPaddingHorizontal16,
        child: CommonFoodButtonWidget(
          title: context.l10n.save,
          onTap: () {
            // PlasticCard newCard = PlasticCard(
            //     cardHolderName: expirationDateController.text,
            //     cardNumber: cardController.text,
            //     nomerPhone: phoneInputController.text);
            // foodUser?.newCard.add(newCard);

            setState(() {});
            Navigator.pushNamed(context, FoodNavigatorConst.foodProfileView);
            foodUser!.cards.add(CardModel(
                balance: 230000000,
                cardNumber: cardController.text,
                cardPhone: phoneInputController.text,
                expirationMonth: "03",
                expirationYear: "25"));
          },
        ),
      ),
    );
  }
}
