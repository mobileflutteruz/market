import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/domain/model/mobile/cart_product/cart_product.dart';
import 'package:karmango/domain/repository/data_repository.dart';
import 'package:karmango/presentation/category/category_item_view/cubit/category_cubit.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/presentation/components/common_blue_button.dart';
import 'package:karmango/presentation/components/loader_widget.dart';

class CategoryProductScreen extends StatelessWidget {
  final ProductModel category;

  CategoryProductScreen(this.category);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category Products"),
      ),
      body: BlocProvider(
        create: (context) => CategoryProductCubit(context.read<DataRepository>())..fetchCategoryProduct(category.id!),
        child: Buildable<CategoryProductCubit, CategoryProductState, CategoryProductBuildableState>(
          properties: (buildable) => [
            buildable.loading ?? false,
            buildable.success ?? false,
            buildable.failed ?? false,
            buildable.categoryProduct,
          ],
          builder: (context, state) {
            if (state.loading) {
              return const Center(child: LoaderWidget());
            }
            if (state.failed || state.categoryProduct == null || state.categoryProduct!.products == null) {
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
                        context.read<CategoryProductCubit>().fetchCategoryProduct(category.id!);
                      },
                    ),
                  ],
                ),
              );
            }
            if (state.categoryProduct!.products!.length != null && category.id == state.categoryProduct!.id) {
              return ListView.builder(
                itemCount: state.categoryProduct!.products!.length,
                itemBuilder: (context, index) {
                  final product = state.categoryProduct!.products![index];
                  return ListTile(
                    leading: product.image != null
                        ? Image.network('https://karmango.shop.dukan.uz/api${product.image}')
                        : SizedBox.shrink(), // Show an empty box if no image
                    title: Text(product.name ?? ''),
                    subtitle: Text('${product.price} UZS'),
                  );
                },
              );
            } else {
              return Center(
                child: Text(
                  'Нет результатов поиска, мы не можем найти товар, который вы ищете.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF7C8A9D),
                    fontSize: 13,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
