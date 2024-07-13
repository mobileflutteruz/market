import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/presentation/components/common_app_bar.dart';

import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/core/extension/context_extension.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';

class FoodMyOrderCard extends StatelessWidget {
  const FoodMyOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    
    Map<String, int> myData1 = {
      context.l10n.productPrice: 99000,
      context.l10n.delivery: 15000,
      context.l10n.discount: 0,
      context.l10n.total: 114000,
    };
    Map<String, String> myData2 = {
      context.l10n.day: "15.01.24",
      context.l10n.status: context.l10n.status_incomplete,
    };

    return Scaffold(
      appBar: CommonAppBar(
        title: context.l10n.myOrder,
        backOnTap: () {
          Navigator.pop(context);
        },
      ),
      backgroundColor: ColorConstants.cffffff,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppUtils.kGap16,
          Container(
            padding: const EdgeInsets.only(
              right: 23,
            ),
            decoration: BoxDecoration(
              color: FoodColors.cffffff,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x26A2AAB8),
                  blurRadius: 6,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(children: <Widget>[
              Container(
                height: AppLayout.getHeight(72, context),
                width: AppLayout.getHeight(72, context),
                margin: const EdgeInsets.only(right: 23, left: 24, bottom: 15),
                decoration: BoxDecoration(
                  color: FoodColors.cF5F5F5,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x26A2AAB8),
                      blurRadius: 6,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Image.asset(FoodImages.shampun),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${context.l10n.order} № 1234567',
                        style: Styles.manropeSemiBold14.copyWith(
                          color: ColorConstants.c0E1A23,
                        ),
                      ),
                      AppUtils.kGap8,
                      Text(
                        'Шампун Dove Hair Therapt',
                        maxLines: 2,
                        style: Styles.manropeMedium13.copyWith(
                          color: FoodColors.c0E1923,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          AppUtils.kGap16,
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: ColorConstants.cffffff,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x26A2AAB8),
                  blurRadius: 6,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${context.l10n.order} № 1234567',
                    style: Styles.manropeSemiBold14.copyWith(
                      color: ColorConstants.c0E1A23,
                    ),
                  ),
                  ...List.generate(myData2.length, (index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          bottom: index == myData2.length - 1 ? 0 : 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            myData2.keys.toList()[index],
                            style: Styles.manropeMedium14
                                .copyWith(color: FoodColors.c8B96A5),
                          ),
                          Text(
                            myData2.values.toList()[index],
                            textAlign: TextAlign.right,
                            style: Styles.manropeSemiBold14
                                .copyWith(color: FoodColors.c0E1A23),
                          ),
                        ],
                      ),
                    );
                  })
                ]),
          ),
          AppUtils.kGap16,
          Container(
            padding: AppUtils.kPaddingAll12,
            decoration: BoxDecoration(
              color: FoodColors.cffffff,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x26A2AAB8),
                  blurRadius: 6,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Манзил:',
                    style: Styles.manropeMedium14
                        .copyWith(color: FoodColors.c8B96A5),
                  ),
                  AppUtils.kGap50,
                  Expanded(
                    child: Text(
                      'г. Ташкент, Юнусабадский район, улица Чинабад, дом 1',
                      maxLines: 2,
                      style: Styles.manropeSemiBold14
                          .copyWith(color: FoodColors.c0E1A23),
                    ),
                  ),
                ]),
          ),
          AppUtils.kGap16,
          Container(
            width: double.infinity,
            height: AppLayout.getHeight(51, context),
            padding: const EdgeInsets.symmetric(horizontal: 16),
           decoration: BoxDecoration(
              color: ColorConstants.cffffff,
              borderRadius: BorderRadius.circular(10),
             boxShadow: const [
                  BoxShadow(
                    color: Color(0x26A2AAB8),
                    blurRadius: 6,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
              ],
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Манзил:',
                    style: Styles.manropeMedium14
                        .copyWith(color: FoodColors.c8B96A5),
                  ),
                  Image.asset(ImageConstants.money),
                ]),
          ),
          AppUtils.kGap16,
          Container(
            padding: AppUtils.kPaddingAll16,
            decoration: BoxDecoration(
              color: ColorConstants.cffffff,
              borderRadius: BorderRadius.circular(10),
             boxShadow: const [
                  BoxShadow(
                    color: Color(0x26A2AAB8),
                    blurRadius: 6,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
              ],
            ),
            child: Column(children: [
              ...List.generate(myData1.length, (index) {
                return Padding(
                  padding: EdgeInsets.only(
                      bottom: index == myData1.length - 1 ? 0 : 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        myData1.keys.toList()[index],
                        style: Styles.manropeMedium14.copyWith(
                          color: index == 2
                              ? FoodColors.c2473F2
                              : FoodColors.c8B96A5,
                        ),
                      ),
                      Text(
                        '${myData1.values.toList()[index]} ${context.l10n.sum}',
                        textAlign: TextAlign.right,
                        style: Styles.manropeSemiBold14
                            .copyWith(color: FoodColors.c0E1A23),
                      ),
                    ],
                  ),
                );
              })
            ]),
          ),
        ],
      ),
    );
  }
}
