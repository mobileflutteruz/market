import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/extension/context_extension.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';

class FoodProfileCardWidget extends StatelessWidget {
  final String balance;
  final String cardNumber;
  final String cardData;
  final bool isProfileCard;


  const FoodProfileCardWidget({
    super.key,
    required this.balance,
    required this.cardNumber,
    required this.cardData,
     this.isProfileCard=false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height:  isProfileCard? 96:136,
      padding: AppUtils.kPaddingHor16Ver12,
      decoration: BoxDecoration(
          color: FoodColors.primaryColor,
          borderRadius: AppUtils.kBorderRadius10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.l10n.balance,
              
                style: Styles.manropeRegular10.copyWith(
                  color: ColorConstants.cffffff,
                ),
              ),
              Text(
                balance,
                style: Styles.manropeExtraBold16.copyWith(
                  color: ColorConstants.cffffff,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                cardNumber,
                style: Styles.manropeRegular13.copyWith(
                  color: ColorConstants.cffffff,
                ),
              ),
              Text(
                cardData,
                style: Styles.manropeRegular13.copyWith(
                  color: ColorConstants.cffffff,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
