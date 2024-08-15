import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/config/di/injection.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/presentation/category/category_item_view/category_item_view.dart';
import 'package:karmango/presentation/category/components/category_item_widget.dart';
import 'package:karmango/presentation/category/cubit/category_cubit.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/presentation/components/common_blue_button.dart';
import 'package:karmango/presentation/components/loader_widget.dart';

class FoodCategoryPage extends StatelessWidget {
  const FoodCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.categories),
      ),
      body: BlocProvider(
        create: (context) {
          var bloc = locator<CategoryCubit>();
          bloc.fetchCategory();
          return bloc;
        },
        child: Buildable<CategoryCubit, CategoryState, CategoryBuildableState>(
          properties: (state) => [
            state.loading,
            state.success,
            state.failed,
            state.category,
            state.products,
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
                        context.read<CategoryCubit>().fetchCategory();
                      },
                    ),
                  ],
                ),
              );
            }

            if (state.category != null && state.category!.isNotEmpty) {
              return GridView.builder(
                padding: const EdgeInsets.all(16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 164 / 128,
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemCount: state.category!.length,
                itemBuilder: (context, index) {
                  final category = state.category![index];
                  return FoodCategoryItemWidget(
                    imageLink: category.image ?? '',
                    categoryItemName: category.name ?? '',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CategoryProductScreen(category.id!),
                        ),
                      );
                    },
                  );
                },
              );
            }

            return const Center(child: Text('No categories available'));
          },
        ),
      ),
    );
  }
}
