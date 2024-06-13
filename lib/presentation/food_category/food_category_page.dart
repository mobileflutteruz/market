import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/core/extension/context_extension.dart';
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
          if (state is CategoryBuildable) {
            if (state.loading) {
              return const LoaderWidget();
            }
            if (state.failed) {
              return Center(
                child: ElevatedButton(
                  onPressed: () => context.read<CategoryCubit>().fetchCategory(),
                  child: const Text("Retry"),
                ),
              );
            }

            final categories = state.category ?? [];

            return Scaffold(
              appBar: AppBar(
                title: Text(context.l10n.categories),
                automaticallyImplyLeading: false, // Remove the back arrow
              ),
              body: GridView.builder(
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (_) =>
                      //         CategoryItemView(categoryId: category.id!),
                      //   ),
                      // );
                    },
                    smallButton: () {},
                  );
                },
              ),
            );
          }
          return Container(); 
        },
      ),
    );
  }
}
