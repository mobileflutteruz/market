part of 'my_order_components.dart';

class FoodActiveProductsWidget extends StatelessWidget {
  const FoodActiveProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppUtils.kPaddingHorizontal16,
      child: Container(
        padding: AppUtils.kPaddingAll16,
        decoration: ShapeDecoration(
          color: FoodColors.cffffff,
          shape: const RoundedRectangleBorder(
            borderRadius: AppUtils.kBorderRadius10,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  CupertinoIcons.clock,
                  size: 18,
                  color: FoodColors.cFFBE2E,
                ),
                AppUtils.kGap6,
                Text(
                  'Заказ № 1234567',
                  style: Styles.manropeSemiBold16.copyWith(
                    color: FoodColors.c0E1923,
                  ),
                ),
               const Spacer(),
                Text(
                  '10 256 000 сум',
                  style: Styles.manropeBold16.copyWith(
                    color: FoodColors.c0E1923,
                  ),
                ),
              ],
            ),
            AppUtils.kGap4,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  context.l10n.unfinished,
                  style: Styles.manropeSemiBold14.copyWith(
                    color: FoodColors.cBFBFBF,
                  ),
                ),
                Text(
                  '1 дона',
                  style: Styles.manropeSemiBold14.copyWith(
                    color: FoodColors.cBFBFBF,
                  ),
                ),
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
                    color: ColorConstants.kGreyOrderBack,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                AppUtils.kGap16,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Смартфон Samsung Galaxy Note 20 Ultra 256 ГБ',
                        maxLines: 2,
                        style: Styles.manropeMedium16.copyWith(
                          color: FoodColors.c0E1923,
                        ),
                      ),
                      Text(
                        'e-SIM',
                        style: Styles.manropeSemiBold14.copyWith(
                          color: FoodColors.cBFBFBF,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}