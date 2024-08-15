part of 'my_order_components.dart';

class FoodPaymentAmountWidget extends StatefulWidget {
  const FoodPaymentAmountWidget({super.key});

  @override
  State<FoodPaymentAmountWidget> createState() =>
      _FoodPaymentAmountWidgetState();
}

class _FoodPaymentAmountWidgetState extends State<FoodPaymentAmountWidget> {
  int paymentAmount = 0;
  Map<String, int> paymentAmountMap = {
    "Shu oy uchun": 854667,
    "Barchasi uchun": 3854667,
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Тўлов миқдори',
          style: Styles.manropeMedium16.copyWith(
            color: Color(0xFF212121),
          ),
        ),
        AppUtils.kGap24,
        ...List.generate(
          2,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  paymentAmount = index;
                });
              },
              child: Container(
                padding: AppUtils.kPaddingHorizontal16,
                decoration: ShapeDecoration(
                  color: FoodColors.cF9F9FB,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      paymentAmountMap.keys.toList()[index],
                      style: Styles.manropeMedium14.copyWith(
                        color: FoodColors.cA6AEBF,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '${paymentAmountMap.values.toList()[index]} ${context.l10n.sum}',
                      textAlign: TextAlign.right,
                      style: Styles.manropeMedium14.copyWith(
                        color: FoodColors.c0E1923,
                      ),
                    ),
                    Radio(
                      activeColor: FoodColors.c2473F2,
                      focusColor: FoodColors.cC6C8CE,
                      value: index,
                      groupValue: paymentAmount,
                      onChanged: (value) {
                        setState(() {
                          paymentAmount = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
