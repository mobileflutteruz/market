part of '../home/components/food_home_components.dart';

class FoodHomeView extends StatefulWidget {
  const FoodHomeView({super.key});

  @override
  State<FoodHomeView> createState() => _FoodHomeViewState();
}

class _FoodHomeViewState extends State<FoodHomeView> {
  late final PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();

    context.read<FoodHomeCubit>().fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: const FoodHomeAppBarWidget(),
      body: Buildable<FoodHomeCubit, FoodHomeState, FoodHomeBuildableState>(
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
            return const Center(child: LoaderWidget());
          }
          if (state.failed) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .6,
                    child: Image.asset("assets/images/home_error.png"),
                  ),
                  const SizedBox(height: 20),
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
                  const SizedBox(height: 12),
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
                  const SizedBox(height: 32),
                  CommonButtonWidget(
                    title: "Retry",
                    onTap: () {
                      context.read<FoodHomeCubit>().fetchProducts();
                    },
                  ),
                ],
              ),
            );
          }

          final List<HomeBanner> topBanner =
              state.homeProducts?.result!.top_banner ?? [];
          final List<HomeBanner> bottomBanner =
              state.homeProducts?.result!.bottom_banner ?? [];
          final List<TopProduct> topProduct =
              state.homeProducts?.result!.top_product ?? [];
          final List<TopProduct> bottomProduct =
              state.homeProducts?.result!.bottom_product ?? [];

          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 16),
                const FoodSearchBarWidget(),
                const SizedBox(height: 16),
                FoodBannerViewWidget(banners: topBanner),
                const SizedBox(height: 20),
                ...topProduct.map((product) {
                  return product.products!.isNotEmpty
                      ? Padding(
                          padding: const EdgeInsets.only(bottom: 24),
                          child: FoodProductsViewWidget(
                            title: product.name!,
                            smallButton: (){},
                            // smallButton: () {
                            //   print("Basket");
                            //   context
                            //       .read<FoodBasketCubit>()
                            //       .setBasketProducts(product.top_id!);
                            //   context
                            //       .read<FoodBasketCubit>()
                            //       .setBasketProducts(product.top_id!);
                            // },
                            leftBtnTapped: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AllProdact(product),
                                ),
                              );
                            },
                            products: product.products!,
                          ),
                        )
                      : const SizedBox.shrink();
                }),
                const SizedBox(height: 24),
                FoodBannerViewWidget(banners: bottomBanner),
                const SizedBox(height: 24),
                ...bottomProduct.map((product) {
                  return product.products!.isNotEmpty
                      ? Padding(
                          padding: const EdgeInsets.only(bottom: 24),
                          child: FoodProductsViewWidget(
                            title: product.name!,
                            smallButton: () {},
                            leftBtnTapped: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AllProdact(product),
                                ),
                              );
                            },
                            products: product.products!,
                          ),
                        )
                      : const SizedBox.shrink();
                }),
              ],
            ),
          );
        },
      ),
    );
  }
}
