import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/presentation/components/common_app_bar.dart';
import 'package:karmango/presentation/components/loader_widget.dart';
import 'package:karmango/presentation/food_category/components/category_item_widget.dart';
import 'package:karmango/presentation/food_category/cubit/category_cubit.dart';
import 'package:karmango/config/di/injection.dart';

class FoodCategoryPage extends StatelessWidget {
  const FoodCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        var cubit = locator<CategoryCubit>();
        cubit.fetchCategory();
        return cubit;
      },
      child: BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {
          return Scaffold(
            appBar: CommonAppBar(
               title: context.l10n.categories,
              // automaticallyImplyLeading: false,
            ),
            body: state.when(
              initial: () => Container(),
              loading: () => const LoaderWidget(),
              success: (categories) => GridView.builder(
                padding: const EdgeInsets.all(16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 164 / 128,
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return FoodCategoryItemWidget(
                    imageLink: category.image ?? '',
                    categoryItemName: category.name ?? '',
                    onTap: () {

                    },
                    smallButton: () {},
                  );
                },
              ),
              failure: (error) => Center(
                child: ElevatedButton(
                  onPressed: () => context.read<CategoryCubit>().fetchCategory(),
                  child: const Text("Retry"),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}