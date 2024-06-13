part of "../home/components/food_home_components.dart";

class FoodHomeView extends StatefulWidget {
  const FoodHomeView({super.key});

  @override
  State<FoodHomeView> createState() => _FoodHomeViewState();
}

class _FoodHomeViewState extends State<FoodHomeView> {
  @override
  void initState() {
    super.initState();
  }

  late final PageController pageController;

  // late final DemoProductModel product;
  // late List<DemoProductModel> products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: const FoodHomeAppBarWidget(),
      body: SingleChildScrollView(
        child: Buildable<FoodHomeCubit, FoodHomeState, FoodHomeBuildableState>(
          properties: (buildable) => [
            buildable.cardProductCount,
            buildable.loading,
            buildable.success,
            buildable.failed,
            buildable.homeProducts,
            buildable.product,
          ],
          builder: (context, state) {
            if (state.loading) {
              return Center(child: const LoaderWidget());
            }
            if (state.failed) {
              return Padding(
                padding: AppUtils.kPaddingAll16,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: AppLayout.getScreenWidth(context) * .6,
                        child: Image.asset("assets/images/home_error.png")),
                    AppUtils.kGap20,
                    const Text(
                      'что-то пошло не так',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF0E1923),
                        fontSize: 20,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    AppUtils.kGap12,
                    const Text(
                      'Нет результатов поиска, мы не можем найти товар, который вы ищете.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF7C8A9D),
                        fontSize: 13,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    AppUtils.kGap32,
                    CommonButtonWidget(
                      title: "Retry",
                      onTap: () {
                        context.read<FoodHomeCubit>().fetchProducts();
                      },
                    )
                  ],
                ),
              );
            }
            final List<MobileBanners>? banners =
                state.homeProducts?.result?.banner;
            // final MobileDashBoard dashboards =
            //     state.homeProducts?.result?.product as MobileDashBoard;

            final List<MobileDashBoard> products =
                state.homeProducts?.result!.product ?? [];

            print(banners?.toString() ?? 'banners is null');

            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppUtils.kGap16,
                const FoodSearchBarWidget(),
                AppUtils.kGap16,
                FoodBannerViewWidget(
                  banners: banners![0],
                ),
                // ListView.separated(
                //   separatorBuilder: (context, index) => FoodBannerViewWidget(
                //     banners: banners![index],
                //   ),
                //   itemCount: 20,
                //   itemBuilder: (context, index) => FoodProductsViewWidget(
                //       title: products[index].name ?? "",
                //       smallButton: () {},
                //       leftBtnTapped: () {
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //             builder: (context) => AllProdact(
                //               products[0],
                //             ),
                //           ),
                //         );
                //       },
                //       products: products[index].products!),
                // ),

                AppUtils.kGap20,
                ...List.generate(
                  products.length,
                  (index) => products[index].products!.isNotEmpty
                      ? Padding(
                          padding: const EdgeInsets.only(bottom: 24),
                          child: FoodProductsViewWidget(
                              title: products[index].name ?? "",
                              smallButton: () {},
                              leftBtnTapped: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AllProdact(
                                      products[0],
                                    ),
                                  ),
                                );
                              },
                              products: products[index].products!),
                        )
                      : AppUtils.kGap,
                ),

                AppUtils.kGap24,
                // FoodProductsViewWidget(
                //   title: products[1].name ?? "",
                //   smallButton: () {},
                //   dashboard: products[1],
                //   leftBtnTapped: () {
                //     // Navigator.push(
                //     //   context,
                //     //   MaterialPageRoute(
                //     //     builder: (context) => AllProdact(
                //     //       products.products as MobileDashBoard?,
                //     //     ),
                //     //   ),
                //     // );
                //   },
                // ),
                AppUtils.kGap24,

                // FoodProductsViewWidget(
                //   title: context.l10n.new_arrivals,
                //   smallButton: () {},
                //   dashboard: products,
                //   leftBtnTapped: () {
                //     // Navigator.push(
                //     //   context,
                //     //   MaterialPageRoute(
                //     //     builder: (context) => AllProdact(
                //     //       products.products! as MobileDashBoard?,
                //     //     ),
                //     //   ),
                //     // );
                //   },
                // ),
                AppUtils.kGap24,
                FoodBannerViewWidget(
                  banners: banners![1],
                ),

                AppUtils.kGap24,
              ],
            );
          },
        ),
      ),
    );
  }
}

Container buildIconButton(BuildContext context, IconData icon) {
  return Container(
    height: AppLayout.getHeight(44, context),
    width: AppLayout.getWidth(44, context),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), color: FoodColors.cF6F6F6),
    child: Center(
      child: Icon(icon),
    ),
  );
}
