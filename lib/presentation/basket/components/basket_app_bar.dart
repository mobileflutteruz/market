part of 'basket_components.dart';

class FoodBasketAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const FoodBasketAppBarWidget({
    super.key,
  });
// <FoodBasketCubit, FoodBasketState,
//             FoodBasketBuildableState>
  @override
  Widget build(BuildContext context) {
    return Buildable<FoodBasketCubit, FoodBasketState,
            FoodBasketBuildableState>(
        properties: (buildable) => [
              buildable.cardProductIds,
              buildable.selectedIds,
              buildable.isChoosedAll,
              buildable.products,
            ],
        builder: (context, state) {
          return AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            elevation: 20,
            surfaceTintColor: Colors.white,
            shadowColor: const Color(0x11050505),
            foregroundColor: Colors.white,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.yourCart,
                  style: Styles.manropeSemiBold18.copyWith(
                    color: FoodColors.c0E1923,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  '${state.cardProductIds.length} ${context.l10n.products}',
                  textAlign: TextAlign.right,
                  style: Styles.manropeRegular14.copyWith(
                    color: ColorConstants.c8B96A5,
                  ),
                ),
              ],
            ),
            centerTitle: false,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 16,
                      width: 16,
                      child: Checkbox.adaptive(
                        activeColor: const Color(0xFF2473F2),
                        side: BorderSide(color: FoodColors.c8D909B, width: 1),
                        shape: const RoundedRectangleBorder(
                            borderRadius: AppUtils.kBorderRadius4),
                        value: state
                            .isChoosedAll, // Hammasi tanlanganmi (bu state bilan bog'langan)
                        onChanged: (isChecked) {
                          print("onChanged: $isChecked");

                          if (isChecked == true) {
                            // Agar checkbox bosilgan bo'lsa, barcha mahsulot IDlarini tanlash
                            context
                                .read<FoodBasketCubit>()
                                .setSelectIds(state.cardProductIds);
                          } else {
                            // Agar checkbox ochirilib qo'yilsa, tanlashni tozalash
                            context.read<FoodBasketCubit>().clearSelectIds();
                          }
                        },
                      ),
                    ),
                    AppUtils.kGap8,
                    Expanded(
                      child: Text(
                        context.l10n.chooseAll,
                        style: Styles.manropeRegular14.copyWith(
                          color: state.isChoosedAll
                              ? FoodColors.c0E1923
                              : FoodColors.c8B96A5,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    // const Spacer(),
                    GestureDetector(
                      onTap: () {
                        context.read<FoodBasketCubit>().clearBasketIds();
                      },
                      child: Text(
                        context.l10n.deleteEverything,
                        style: Styles.manropeRegular14.copyWith(
                          color: state.cardProductIds.isEmpty
                              ? FoodColors.c8B96A5
                              : FoodColors.cF83333,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight + kToolbarHeight);
}
