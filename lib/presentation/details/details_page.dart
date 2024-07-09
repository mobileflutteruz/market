import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/config/di/injection.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/presentation/components/image_view.dart';
import 'package:karmango/presentation/components/loader_widget.dart';
import 'package:karmango/presentation/details/cubit/details_cubit.dart';
import 'package:karmango/presentation/home/components/food_products_similar_widget%20.dart';
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
  bool _isLiked = false; // Initialize _isLiked to false

  void _toggleLike() {
    setState(() {
      _isLiked = !_isLiked;
    });
  }

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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    onPressed: () async {
                                      await Share.share("Share your content");
                                    },
                                    icon: const Icon(Icons.share_outlined),
                                  ),
                                  Container(
                                    width: 48,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xffc4c4c4),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: _toggleLike,
                                    child: Icon(
                                      _isLiked
                                          ? CupertinoIcons.heart_fill
                                          : CupertinoIcons.heart,
                                      color: _isLiked ? Colors.red : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: AppLayout.getHeight(200, context),
                                width: AppLayout.getHeight(220, context),
                                child: ImageViewWidget(
                                  isNetImg: true,
                                  imageLink:
                                      state.product!.result!.product!.image!,
                                ),
                              ),
                              AppUtils.kGap20,
                              Center(
                                child: SizedBox(
                                  width: AppLayout.getWidth(110, context),
                                  child: Text(
                                    state.product!.result!.product!.name
                                        .toString(),
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    style: Styles.manropeMedium16.copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: FoodColors.c0E1A23,
                                    ),
                                  ),
                                ),
                              ),
                              AppUtils.kGap16,
                            ],
                          ),
                        ),
                        Padding(
                          padding: AppUtils.kPaddingHor24Ver16,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                context.l10n.description ?? "",
                                textAlign: TextAlign.center,
                                style: Styles.manropeMedium16,
                              ),
                            ],
                          ),
                        ),
                        ExpansionTile(
                          shape: Border.all(color: FoodColors.cE3E3E3),
                          childrenPadding:
                              const EdgeInsets.only(left: 16, right: 16),
                          title: Text(
                            context.l10n.moreAboutProduct,
                            style: Styles.manropeMedium16,
                          ),
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    context.l10n.composition,
                                    style: Styles.manropeMedium16,
                                  ),
                                  AppUtils.kGap20,
                                  Text(
                                    state.product!.result!.product!.name ?? "",
                                    style: Styles.manropeMedium14.copyWith(
                                      color: FoodColors.cA6AEBF,
                                      overflow: TextOverflow.visible,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            AppUtils.kGap16,
                          ],
                        ),
                        AppUtils.kGap16,
                        FoodProductsSimilarViewWidget(
                          smallButton: () {},
                          title: context.l10n.similarProducts,
                          leftBtnTapped: () {},
                          similarProduct: state.product!,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: AppLayout.getHeight(80, context),
                  width: AppLayout.getHeight(376, context),
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                context.l10n.all,
                                style: Styles.interSemiBold20.copyWith(
                                    color: FoodColors.cA6AEBF, fontSize: 12),
                              ),
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
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
