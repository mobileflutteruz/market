// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:karmango/presentation/food_category/cubit/category_cubit.dart';

// class CategoryProductScreen extends StatelessWidget {
//   final String categoryName;

//   CategoryProductScreen(this.categoryName);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(categoryName),
//       ),
//       body: BlocBuilder<CategoryCubit, CategoryBuildable>(
//         builder: (context, state) {
//           if (state.loading) {
//             return Center(child: CircularProgressIndicator());
//           } else if (state.failed) {
//             return Center(child: Text('Xatolik yuz berdi: ${state.error}'));
//           } else if (state.success && state.categoryProduct != null) {
//             return ListView.builder(
//               itemCount: state.categoryProduct?.products?.length,
//               itemBuilder: (context, index) {
//                 final product = state.categoryProduct!.products![index];
//                 return ListTile(
//                   leading: Image.network('https://yourbaseurl.com${product.image}'),
//                   title: Text(product.name ?? ''),
//                   subtitle: Text('${product.price} UZS'),
//                 );
//               },
//             );
//           } else {
//             return Center(child: Text('Mahsulotlar mavjud emas.'));
//           }
//         },
//       ),
//     );
//   }
// }