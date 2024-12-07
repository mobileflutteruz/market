import 'package:flutter/material.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/domain/model/mobile/home/home.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/presentation/components/common_app_bar.dart';
import 'package:karmango/presentation/details/details_page.dart';
import 'package:karmango/presentation/home/components/food_product.dart';
import 'package:karmango/presentation/home/cubit/food_home_cubit.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../../../../core/utils/utils.dart';

class AllProdact extends StatelessWidget {
  const AllProdact(
    this.products, {
    super.key,
  });
  final TopProduct? products;

  @override
  Widget build(BuildContext context) {
    int crossAxisCount = (AppLayout.getScreenWidth(context) / 187.5).floor();

    return Buildable<FoodHomeCubit, FoodHomeState, FoodHomeBuildableState>(
      properties: (buildable) => [buildable.likeIds, buildable.homeProducts],
      builder: (context, state) {
        return Scaffold(
          appBar: CommonAppBar(
            title: context.l10n.all,
            backOnTap: () {
              Navigator.pop(context);
            },
          ),
          body: CustomScrollView(
            slivers: [
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
                      child: FoodProductItemWidget(
                        smallButton: () {},
                        likeTapped: () {
                          // context
                          //     .read<FoodHomeCubit>()
                          //     .setLikeId(products[index].id);
                        },
                        isLiked: false,
                        //  state.likeIds
                        //     .contains(products[index].id.toString()),
                        product: products?.products![index],
                        onTap: () {
                          showModalView(
                            context,
                            products!.products![index],
                          );
                        },
                      ),
                    );
                  },
                  itemCount: products?.products!.length,
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Future<dynamic> showModalView(BuildContext context, MobileProduct? product) {
    return showCupertinoModalBottomSheet(
      expand: true,
      context: context,
      builder: (context) => DetailsPage(productId: product!.product_id!),
    );
  }
}
