import 'package:karmango/core/utils/utils.dart';
import 'package:karmango/domain/model/mobile/category/category.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/presentation/components/loader_widget.dart';
import 'package:karmango/presentation/food_category/category_item_view/category_item_view.dart';
import 'package:karmango/presentation/food_category/components/category_item_widget.dart';
import 'package:karmango/presentation/food_category/cubit/category_cubit.dart';
import '../../../../config/di/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FoodCategoryPage extends StatelessWidget {
  const FoodCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold();
    return BlocProvider(
        create: (context) {
          var cubit = locator<CategoryCubit>();
          cubit.fetchCategory();
          return cubit;
        },
        child: Buildable<CategoryCubit, CategoryState, CategoryBuildable>(
          properties: (buildable) => [
            buildable.loading,
            buildable.success,
            buildable.failed,
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

            final List<Datum>? category = state.category?.data;
            print(category);

            return Scaffold(
              // backgroundColor: ColorConstants.kGreyOrderBack,
              
              body: GridView.builder(
                padding: AppUtils.kPaddingAll16,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 164 / 128,
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemCount: state.category!.data!.length,
                itemBuilder: (context, index) {
                  // final category = state.categories![index];
                  // print(category);
                  return FoodCategoryItemWidget(
                    imageLink: category![index].image!,
                    categoryItemName: category[index].name_uz,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              CategoryItemView(categoryId: state!.cartProductModel!.id )
                        ),
                      );
                    }, smallButton: () {  },
                  );
                },
              ),
            );
          },
        ));
  }
}
