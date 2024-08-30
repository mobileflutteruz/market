import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/config/di/injection.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/core/utils/utils.dart';
import 'package:karmango/presentation/category/category_item_view/cubit/category_cubit.dart';
import 'package:karmango/presentation/category/components/category_product.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/presentation/components/common_blue_button.dart';
import 'package:karmango/presentation/components/loader_widget.dart';

import 'package:lottie/lottie.dart';

class CategoryProductScreen extends StatelessWidget {
  final int id;

  CategoryProductScreen(this.id, {super.key});

  @override
  Widget build(BuildContext context) {
    int crossAxisCount = (AppLayout.getScreenWidth(context) / 187.5).floor();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Category Products"),
      ),
      body: BlocProvider(
        create: (context) =>
            locator<CategoryProductCubit>()..fetchCategoryProduct(id),
        child: Buildable<CategoryProductCubit, CategoryProductState,
            CategoryProductBuildableState>(
          properties: (buildable) => [
            buildable.loading,
            buildable.success,
            buildable.failed,
            buildable.categoryProduct,
          ],
          builder: (context, state) {
            if (state.loading) {
              return const Center(child: LoaderWidget());
            }
            if (state.failed ||
                state.categoryProduct == null ||
                state.categoryProduct!.products == null) {
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
                        context
                            .read<CategoryProductCubit>()
                            .fetchCategoryProduct(id);
                      },
                    ),
                  ],
                ),
              );
            }
            if (state.categoryProduct!.products!.isNotEmpty &&
                id == state.categoryProduct!.id) {
              return GridView.builder(
                padding: const EdgeInsets.all(16),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount == 0 || crossAxisCount == 1
                      ? 2
                      : crossAxisCount,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: .52,
                ),
                itemCount: state.categoryProduct!.products!.length,
                itemBuilder: (context, index) {
                  final product = state.categoryProduct!.products![index];
                  return CategoryProductItemWidget(
                    isLiked: true,
                    likeTapped: () {},
                    product: product, // Pass the product directly
                    smallButton: () {},
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CategoryProductScreen(product.id!),
                        ),
                      );
                    },
                  );
                },
              );
            } else {
              return Scaffold(
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Lottie.asset('assets/animation/food_empty.json'),
                    AppUtils.kGap32,
                    SizedBox(
                      child: Text(
                        "Категория по вашему запросу пуста",
                        textAlign: TextAlign.center,
                        style: Styles.manropeSemiBold18.copyWith(
                          color: ColorConstants.c0E1A23,
                        ),
                      ),
                    ),
                    AppUtils.kGap32,
                    Text(
                      "Мы не нашли никаких товаров в этой категории",
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
          },
        ),
      ),
    );
  }
}
