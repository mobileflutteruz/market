part of 'basket_components.dart';

class FoodBasketBottomBarWidget extends StatefulWidget {
  const FoodBasketBottomBarWidget({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  State<FoodBasketBottomBarWidget> createState() =>
      _FoodBasketBottomBarWidgetState();
}

class _FoodBasketBottomBarWidgetState extends State<FoodBasketBottomBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x11050505),
                blurRadius: 20,
                offset: Offset(-4, 0),
                spreadRadius: 0,
              )
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '0 ${context.l10n.products}',
                      style: Styles.manropeMedium12.copyWith(
                        color: const Color(0xFFA6AEBF),
                      ),
                    ),
                    Text(
                      '0',
                      style: Styles.manropeBold16.copyWith(
                        color: const Color(0xFF162B4C),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      FoodNavigatorConst.foodOrder,
                    );
                  },
                  child: Container(
                    height: 40,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: ShapeDecoration(
                      color: FoodColors.primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Text(
                      context.l10n.arrangeAnOrder,
                      textAlign: TextAlign.center,
                      style: Styles.manropeMedium16.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
