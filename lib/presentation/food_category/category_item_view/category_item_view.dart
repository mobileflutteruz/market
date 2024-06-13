// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:karmango/config/di/injection.dart';
// import 'package:karmango/core/utils/app_layouts.dart';
// import 'package:karmango/presentation/components/loader_widget.dart';
// import 'package:karmango/presentation/food_category/components/category_product.dart';
// import 'package:karmango/presentation/food_category/cubit/category_cubit.dart';

// class CategoryItemView extends StatelessWidget {
//   const CategoryItemView({Key? key, required this.categoryId}) : super(key: key);

//   final int categoryId;

//   @override
//   Widget build(BuildContext context) {
//     int crossAxisCount = (AppLayout.getScreenWidth(context) / 187.5).floor();

//     return BlocProvider(
//       create: (context) => locator<CategoryCubit>()..fetchCategoryProducts(categoryId),
//       child: BlocBuilder<CategoryCubit, CategoryState>(
//         builder: (context, state) {
//           if (state is CategoryBuildable && state.loading) {
//             return const LoaderWidget();
//           }
//           if (state is CategoryBuildable && state.failed) {
//             return Center(
//               child: ElevatedButton(
//                 onPressed: () {
//                   context.read<CategoryCubit>().fetchCategoryProducts(categoryId);
//                 },
//                 child: const Text("Retry"),
//               ),
//             );
//           }
//           if (state is CategoryBuildable && state.cartProductModel != null && state.product != null) {
//             return Scaffold(
//               backgroundColor: Colors.white,
//               appBar: AppBar(
//                 title: const Text('Categories'),
//               ),
//               body: CustomScrollView(
//                 slivers: [
//                   SliverPadding(
//                     padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
//                     sliver: SliverGrid.builder(
//                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: crossAxisCount == 0 || crossAxisCount == 1 ? 2 : crossAxisCount,
//                         mainAxisSpacing: 16,
//                         crossAxisSpacing: 16,
//                         childAspectRatio: .52,
//                       ),
//                       itemBuilder: (context, index) {
//                         final product = state.cartProductModel!.products![index];
//                         return SizedBox(
//                           height: 320,
//                           child: CategoryProductItemWidget(
//                             smallButton: () {},
//                             likeTapped: () {},
//                             isLiked: false,
//                             product: product.id,
//                             onTap: () {},
//                           ),
//                         );
//                       },
//                       itemCount: state.cartProductModel!.products!.length,
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           } else {
//             return Center(
//               child: Text(
//                 'Failed to fetch products. Please try again later.',
//                 style: TextStyle(color: Colors.red),
//               ),
//             );
//           }
//         },
//       ),
//     );
//   }
// }
