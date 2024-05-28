

part of "components/const_comp.dart";

class FoodFavouritesView extends StatelessWidget {
  const FoodFavouritesView({super.key});

  @override
  Widget build(BuildContext context) {
    int crossAxisCount = (AppLayout.getScreenWidth(context) / 187.5).floor();
    // double childAspectRatio =
    //     (AppLayout.getScreenWidth(context) % 187.5) * 0.3 / 187.5;

    return Buildable<FavouritesCubit, FavouritesState,
        FavouritesBuildableState>(
      properties: (buildable) => [
        buildable.likeIds,
      ],
      builder: (context, state) {
        final List<DemoProductModel> favouritesProduct = [];
        for (int i = 0; i < allProducts.length; i++) {
          if (state.likeIds.contains(allProducts[i].id.toString())) {
            favouritesProduct.add(allProducts[i]);
          }
        }

        return Scaffold(
          backgroundColor: FoodColors.cffffff,
          appBar: CommonAppBar(
            title: context.l10n.favorites,
          ),
          body: CustomScrollView(
            slivers: [
              FoodInfoWidget(
                favouritesCount: state.likeIds.length,
              ),
              state.likeIds.isEmpty
                  ? SliverToBoxAdapter(
                      child: Column(
                        children: [
                          AppUtils.kGap40,
                          Lottie.asset(
                            'assets/animation/food_empty.json',
                          ),
                        ],
                      ),
                    ):  SizedBox(),
                  // : SliverPadding(
                  //     padding: AppUtils.kPaddingHorizontal16,
                  //     sliver: SliverGrid.builder(
                  //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //         crossAxisCount:
                  //             crossAxisCount == 0 || crossAxisCount == 1
                  //                 ? 2
                  //                 : crossAxisCount, //4,
                  //         mainAxisSpacing: 16,
                  //         crossAxisSpacing: 16,
                  //         childAspectRatio: .52, //.52,
                  //       ),
                  //       itemBuilder: (context, index) {
                  //         return SizedBox(
                  //           height: 320,
                  //           child: FoodProductItemWidget(
                  //               smallButton: () {},
                  //               likeTapped: () {
                  //                 context
                  //                     .read<FavouritesCubit>()
                  //                     .setLikeId(favouritesProduct[index].id);
                  //               },
                  //               isLiked: state.likeIds.contains(
                  //                   favouritesProduct[index].id.toString()),
                  //               product: ,
                  //               onTap: () {}),
                  //         );
                  //       },
                  //       itemCount: favouritesProduct.length,
                  //     ),
                  //   )
            ],
          ),
        );
      },
    );
  }
}
