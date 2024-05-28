import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/utils/utils.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/presentation/components/common_app_bar.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:karmango/presentation/components/loader_widget.dart';
import 'package:karmango/presentation/food_category/components/category_product.dart';
import 'package:karmango/presentation/food_category/cubit/category_cubit.dart';

class CategoryItemView extends StatelessWidget {
  CategoryItemView({
    super.key,
    required this.categoryId,
  });
  final int? categoryId;

  @override
  Widget build(BuildContext context) {
    int crossAxisCount = (AppLayout.getScreenWidth(context) / 187.5).floor();
    // double childAspectRatio =
    //     (AppLayout.getScreenWidth(context) % 187.5) * 0.3 / 187.5;

    // return Scaffold();
    return Buildable<CategoryCubit, CategoryState, CategoryBuildable>(
      properties: (buildable) => [
        // buildable.product,
        buildable.category,
        buildable.cartProductModel
      ],
      builder: (context, state) {
        if (state.loading) {
          return const LoaderWidget();
        }
        if (state.failed) {
          return Center(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Retry"),
            ),
          );
        }

        // final List<Datum>? category = state.category?.data;
        // print(category);
        print("CATEGOOOOOOOOORY ITEM: ${state.cartProductModel!.products}");

        return Scaffold(
          backgroundColor: FoodColors.cffffff,
          appBar: CommonAppBar(
            title: context.l10n.categories,
          ),
          body: CustomScrollView(
            slivers: [
              // FoodInfoWidget(
              //   favouritesCount: state.likeIds.length,
              // ),
              SliverPadding(
                padding: AppUtils.kPaddingHor14Ver16,
                sliver: SliverGrid.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount == 0 || crossAxisCount == 1
                        ? 2
                        : crossAxisCount, //4,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: .52, //.52,
                  ),
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 320,
                      child: CategoryProductItemWidget(
                        smallButton: () {},
                        likeTapped: () {
                          // context
                          //     .read<FoodHomeCubit>()
                          //     .setLikeId(products[index].id);
                        },
                        isLiked: false,
                        //  state.likeIds
                        //     .contains(products[index].id.toString()),
                        product: state!.product!.id,
                        onTap: () {
                          // showModalView(
                          //   context,
                          //    categoryId!.products![index],
                          // );
                        },
                      ),
                    );
                  },
                  itemCount: state.cartProductModel!.products!.length,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
  //  Future<dynamic> showModalView(
  //     BuildContext context, CartProductModel? product) {
  //   return showCupertinoModalBottomSheet(
  //       expand: true,
  //       context: context,
  //       builder: (context) => DetailsPage(productId: product!.id!),);
  // }
}
