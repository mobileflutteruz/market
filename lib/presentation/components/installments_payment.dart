import 'package:karmango/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import '../../../data/preferences/temporary_db.dart';
import '../../core/utils/app_layouts.dart';
import '../../../../core/utils/utils.dart';

class InstallmentsPaymentWidget extends StatefulWidget {
  const InstallmentsPaymentWidget({
    super.key,
    this.isFurniture = false,
  });

  final bool isFurniture;

  @override
  State<InstallmentsPaymentWidget> createState() =>
      _InstallmentsPaymentWidgetState();
}

class _InstallmentsPaymentWidgetState extends State<InstallmentsPaymentWidget> {

  int tapped = 0;


  @override
  Widget build(BuildContext context) {
    bool isFurniture = widget.isFurniture;
    Map<String, String> paymentPrices = {
      "${context.l10n.products} (1)": "13 599 000 cум",
      "Бошланғич тўлов": "0 cум",
      context.l10n.month: "12 Месяц",
      "Ойлик тулов": "599 000 cум",
      "Умумий тулов микдори": "15 825 000 cум"
    };
    return ColoredBox(
      color: Colors.white,
      child: Padding(
        padding: AppUtils.kPaddingHorizontal16,
        child: Container(
          // height: AppLayout.getHeight(376, context),
          // width: double.infinity,
          decoration: ShapeDecoration(
            color:isFurniture? FoodColors.cFAFAFA:  FoodColors.cffffff,
            shape: RoundedRectangleBorder(
              side:  BorderSide(width: 1, color: FoodColors.cEDEDEF),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Column(
            children: [
              Container(
                height: 60,
                width: double.infinity,
                color: ColorConstants.kGreyOrderBack,
                padding: const EdgeInsets.all(16),
                child: Text(
                  context.l10n.installmentPayment,
                  style: Styles.manropeSemiBold16.copyWith(
                    color: FoodColors.c0E1923
                  ),
                ),
              ),
              Padding(
                padding: AppUtils.kPaddingAll16,
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...List.generate(
                          installmentsPaymentMonths.length,
                          (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                tapped = index;
                              });
                            },
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              height: 36,
                              width: 56,
                              alignment: Alignment.center,
                              decoration: ShapeDecoration(
                                color: tapped == index
                                    ? isFurniture?FurnitureColors.primaryColor: FoodColors.c2DCC70
                                    : isFurniture?ColorConstants.white:ColorConstants.kGreyOrderBack,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: AppUtils.kBorderRadius4,
                                ),
                              ),
                              child: Text(
                                "${installmentsPaymentMonths[index]} ${context.l10n.month.toLowerCase()}",
                                textAlign: TextAlign.center,
                                style: Styles.manropeMedium14.copyWith(
                                  color: tapped == index
                                      ? FoodColors.cffffff
                                      : FoodColors.c0E1923,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    ...List.generate(
                      paymentPrices.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: PaymentPricesWidget(
                          leftStr: paymentPrices.keys.toList()[index],
                          rightStr: paymentPrices.values.toList()[index],
                        ),
                      ),
                    ),
                    AppUtils.kGap20,
                    Container(
                      height: 36,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                        color:isFurniture? FoodColors.c333333: FoodColors.c2DCC70,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: Text(
                        context.l10n.arrange,
                        textAlign: TextAlign.center,
                        style: Styles.manropeSemiBold14
                            .copyWith(color: FoodColors.cffffff),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentPricesWidget extends StatelessWidget {
  const PaymentPricesWidget(
      {super.key, required this.leftStr, required this.rightStr});

  final String leftStr;
  final String rightStr;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Row(
        children: [
          Text(
            leftStr,
            style: Styles.manropeMedium14.copyWith(
              color: FoodColors.c8B96A5,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(
                AppLayout.getHeight(12, context),
              ),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Flex(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    direction: Axis.horizontal,
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(
                      (constraints.constrainWidth() /
                              (AppLayout.getScreenWidth(context) * 10 / 375)
                                  .floor())
                          .floor(),
                      (index) => SizedBox(
                        width: AppLayout.getWidth(5, context),
                        height: AppLayout.getHeight(1, context),
                        child: DecoratedBox(
                          decoration:
                              BoxDecoration(color: Colors.grey.shade300),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Text(
            rightStr,
            textAlign: TextAlign.right,
            maxLines: 2,
            style: Styles.manropeSemiBold14.copyWith(
              color: FoodColors.c0E1923,
            ),
          ),
        ],
      ),
    );
  }
}
