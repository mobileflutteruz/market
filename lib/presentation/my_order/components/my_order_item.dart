import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/domain/model/product/product_model.dart';
import 'package:karmango/presentation/my_order/components/my_order_Item_text.dart';
import 'package:karmango/presentation/my_order/components/my_order_text_icon.dart';
import 'package:karmango/presentation/my_order/cubit/food_my_order_cubit.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/core/extension/context_extension.dart';


import '../../../../core/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class FoodMyOrderCartItem extends StatelessWidget {
  const FoodMyOrderCartItem({
    super.key,
    required this.product,
    this.onTap,
  });

  final DemoProductModel product;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Buildable<FoodMyOrderCubit, FoodMyOrderState, FoodMyOrderBuildableState>(
      properties: (buildable) => [buildable.selectedIds],
      builder: (context, state) {
        return Padding(
          padding: AppUtils.kPaddingAll16,
          child: Container(
            padding: AppUtils.kPaddingAll16,
            decoration:  const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: AppUtils.kBorderRadius10,
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x26A2AAB8),
                    blurRadius: 6,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ]),
            child: Column(
              children: [
                Row(
                  children: [
                    AppUtils.kGap6,
                    Text(
                      '${context.l10n.order} № 1234567',
                      style: Styles.manropeSemiBold16.copyWith(
                        color: ColorConstants.c0E1A23,
                      ),
                    ),
                    const Spacer(),
                    FoodMyOrderTextIcon(
                        text: context.l10n.underConsideration,
                        textColor: ColorConstants.cFFBE2E,
                        icon: CupertinoIcons.clock_fill,
                        iconColor: ColorConstants.cFFBE2E,
                        backgroundColor: ColorConstants.cFFF8E9),
                  ],
                ),
                AppUtils.kGap24,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 72,
                      height: 76,
                      decoration: ShapeDecoration(
                        color: FoodColors.cF5F5F5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Image.asset(FoodImages.shampun),
                    ),
                    AppUtils.kGap16,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Шампун  Dove Hair Therapt',
                            maxLines: 2,
                            style: Styles.manropeMedium13.copyWith(
                              color: const Color(0xFF0E1923),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '99 000 сум',
                                style: Styles.manropeSemiBold16.copyWith(
                                  color: ColorConstants.c0E1A23,
                                ),
                              ),
                              Text(
                                '1 ${context.l10n.pc}',
                                style: Styles.manropeSemiBold13.copyWith(
                                  color: ColorConstants.c7C8A9D,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                AppUtils.kGap16,
                AppUtils.kDivider,
                  

                FoodMyOrderItemText(
                  text: context.l10n.product_info,
                  onTap: onTap,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
