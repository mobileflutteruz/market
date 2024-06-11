import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/config/di/injection.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/presentation/components/image_view.dart';
import 'package:karmango/presentation/components/loader_widget.dart';
import 'package:karmango/presentation/details/cubit/details_cubit.dart';
import 'package:share/share.dart';
import '../../core/constants/constants.dart';
import '../../core/utils/app_layouts.dart';
import '../../core/utils/utils.dart';


class DetailsPage extends StatefulWidget {
  final int? productId;

  const DetailsPage({super.key, required this.productId});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int currentPage = 0;
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        var cubit = locator<DetailsCubit>();
        cubit.fetchProduct(widget.productId!);
        return cubit;
      },
      child: Buildable<DetailsCubit, DetailsState, DetailsBuildableState>(
        properties: (buildable) => [
          buildable.loading,
          buildable.success,
          buildable.failure,
          buildable.product,
        ],
        builder: (context, state) {
          if (state.loading) {
            return const LoaderWidget();
          }
          if (state.failure) {
            return Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Retry"),
              ),
            );
          }
          print(
              "PROOOOOOODUCT ITEEEEEEEEM  ${state.product!.result!.product!}");

          return Scaffold(
            body: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    physics: const ClampingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            color: FoodColors.cF6F6F6,
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    onPressed: () async {
                                      await Share.share("Share your content");
                                    },
                                    icon: const Icon(Icons.share_outlined),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: const Icon(
                                      CupertinoIcons.heart_fill,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                              CarouselSlider(
                                items: [
                                  ...List.generate(
                                    state.product!.result!.product!.image
                                            ?.length ??
                                        1,
                                    (index) => ImageViewWidget(
                                      isNetImg: true,
                                      imageLink: state
                                          .product!.result!.product!.image!,
                                    ),
                                  ),
                                ],
                                options: CarouselOptions(
                                  onPageChanged: (index, reason) {
                                    context
                                        .read<DetailsCubit>()
                                        .changeImageIndex(index);
                                    setState(() {});
                                  },
                                ),
                              ),
                              const SizedBox(height: 10),
                              // const SizedBox(height: 10),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: _buildIndicators(
                              //       count:  state.product!.result!.product!.image?.length ?? 1,
                              //       state: state),
                              //   _buildIndicators(product.images.length, state);
                              // ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                        Padding(
                          padding: AppUtils.kPaddingHor24Ver16,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text(
                                  state.product!.result!.product!.name_en
                                      .toString(),
                                  maxLines: 2,
                                  style: Styles.manropeMedium16.copyWith(
                                    color: FoodColors.c212121,
                                  ),
                                ),
                              ),
                              Text(
                                context.l10n.description,
                                textAlign: TextAlign.center,
                                style: Styles.manropeMedium16,
                              ),
                              Text(
                                // widget.product.description,
                                state.product!.result!.product!.discount!
                                    .toString(),
                                style: Styles.manropeMedium14.copyWith(
                                    color: FoodColors.cA6AEBF,
                                    overflow: TextOverflow.visible),
                              ),
                              // AppUtils.kGap12,
                            ],
                          ),
                        ),
                        ExpansionTile(
                          childrenPadding:
                              const EdgeInsets.only(left: 16, right: 16),
                          title: Text(
                            context.l10n.moreAboutProduct,
                            style: Styles.manropeMedium16,
                          ),
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                context.l10n.composition,
                                style: Styles.manropeMedium16,
                              ),
                            ),
                            Text(
                              state.product!.result!.product!.name_en ?? "",
                              style: Styles.manropeMedium14.copyWith(
                                color: FoodColors.cA6AEBF,
                                overflow: TextOverflow.visible,
                              ),
                            ),
                            AppUtils.kGap16,
                          ],
                        ),
                        AppUtils.kGap16,
                        // FoodSimilarViewWidget(smallButton: (){}, result:  widget!.productId![index])
                        // FoodSimilarItemWidget(
                        //   similarProduct: state.similarProduct,
                        //   onTap: () {},
                        //   likeTapped: () {},
                        //   isLiked: true,
                        //   smallButton: () {},
                        // ),
                        
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: AppUtils.kPaddingAll16,
                  decoration: BoxDecoration(
                    color: FoodColors.cffffff,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      )
                    ],
                  ),
                  child: SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('14 000 sum', style: Styles.interSemiBold20),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              1 > 0
                                  ? Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            // BlocProvider.of<FoodHomeCubit>(
                                            //         context)
                                            //     .decrement();
                                          },
                                          child: buildIconButton(
                                            context,
                                            Icons.remove,
                                          ),
                                        ),
                                        AppUtils.kGap16,
                                        Text(
                                          //!
                                          "0",
                                          style:
                                              Styles.manropeSemiBold18.copyWith(
                                            color: FoodColors.c757F96,
                                          ),
                                        ),
                                        AppUtils.kGap16,
                                        GestureDetector(
                                          onTap: () {
                                            // BlocProvider.of<
                                            //     FoodHomeCubit>(
                                            //     context)
                                            //     .increment();
                                          },
                                          child: buildIconButton(
                                            context,
                                            Icons.add,
                                          ),
                                        )
                                      ],
                                    )
                                  : GestureDetector(
                                      onTap: () {
                                        // context
                                        //     .read<FoodHomeCubit>()
                                        //     .decrement();

                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //     builder: (_) =>
                                        //         const FoodBasketPage(),
                                        //   ),
                                        // );
                                      },
                                      child: Container(
                                        width:
                                            AppLayout.getHeight(160, context),
                                        height: AppLayout.getWidth(48, context),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 24, vertical: 12),
                                        decoration: ShapeDecoration(
                                          color: FoodColors.primaryColor,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            context.l10n.toTheCart,
                                            textAlign: TextAlign.center,
                                            style:
                                                Styles.manropeMedium16.copyWith(
                                              color: FoodColors.cffffff,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                              // AppUtils.kGap16,
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 24),
                //   child: FoodProductsViewWidget(
                //       title: "",
                //       smallButton: () {},
                //       leftBtnTapped: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => AllProdact(
                        //       products[0],
                        //     ),
                        //   ),
                        // );
                //       },

                //       product: state!.similarProduct!),
                // )
              ],
            ),
          );
        },
      ),
    );
  }

  // Future<dynamic> showModalView(
  //     BuildContext context, ProductDataModel product) {
  //   return showCupertinoModalBottomSheet(
  //     expand: true,
  //     context: context,
  //     builder: (context) => DetailsPage(product: ),
  //   );
  // }

  List<Widget> _buildIndicators({required int count, state}) {
    List<Widget> indicators = [];
    for (int i = 0; i < count - 1; i++) {
      // print(state.currentIndex);
      indicators.add(
        Container(
          width: 10,
          height: 4,
          margin: const EdgeInsets.symmetric(horizontal: 2.0),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8),
            color: state.imageIndex == i
                ? FoodColors.primaryColor
                : FoodColors.cffffff,
          ),
        ),
      );
    }
    return indicators;
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
}
