part of 'basket_components.dart';

class FoodBasketNotCartPage extends StatelessWidget {
  const FoodBasketNotCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: context.l10n.basket,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          IconConstants.notCart,
          AppUtils.kGap32,
          Text(
            context.l10n.noBasketYet,
            textAlign: TextAlign.center,
            style: Styles.manropeSemiBold18.copyWith(
              color: ColorConstants.c0E1A23,
            ),
          ),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text",
            textAlign: TextAlign.center,
            maxLines: 3,
            style: Styles.manropeRegular14.copyWith(
              color: ColorConstants.c7C8A9D,
            ),
          ),
        ],
      ),
    );
  }
}
