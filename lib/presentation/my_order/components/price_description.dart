part of 'my_order_components.dart';

class FoodPriceDescriptionWidget extends StatelessWidget {
  const FoodPriceDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppUtils.kPaddingHorizontal16,
      child: Container(
        padding: AppUtils.kPaddingAll16,
        decoration: ShapeDecoration(
          color: FoodColors.c212121,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Тўлов тавсифи',
              textAlign: TextAlign.right,
              style: Styles.manropeSemiBold14.copyWith(
                color: FoodColors.c0E1923,
              ),
            ),
            AppUtils.kGap12,
            ...List.generate(
              4,
              (index) => Padding(
                padding: EdgeInsets.only(bottom: index == 3 ? 0 : 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Умумий нархи:',
                      style: Styles.manropeMedium14.copyWith(
                        color: FoodColors.c8B96A5,
                      ),
                    ),
                    Text(
                      '10 256 000 сум',
                      textAlign: TextAlign.right,
                      style: Styles.manropeSemiBold14.copyWith(
                        color: FoodColors.c0E1923,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
