// import 'package:karmango/core/constants/constants.dart';
// import 'package:karmango/domain/model/mobile/home/home.dart';
// import 'package:karmango/domain/model/product/product_model.dart';
// import 'package:karmango/presentation/home/components/food_product.dart';

// import 'package:karmango/presentation/home/cubit/food_home_cubit.dart';
// import 'package:karmango/presentation/components/buildable.dart';
// import '../../../../core/utils/utils.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class FoodResultBottom extends StatefulWidget {
//   const FoodResultBottom({
//     super.key,
//     this.products =  [],
//   });

//   final MobileProduct products;

//   @override
//   State<FoodResultBottom> createState() => _FoodResultBottomState();
// }

// class _FoodResultBottomState extends State<FoodResultBottom> {
//   @override
//   Widget build(BuildContext context) {
//     return Buildable<FoodHomeCubit, FoodHomeState, FoodHomeBuildableState>(
//       properties: (buildable) => [
//         buildable.likeIds,
//       ],
//       builder: (context, state) {
//         return SliverPadding(
//           padding: AppUtils.kPaddingHorizontal16,
//           sliver: SliverGrid.builder(
//             itemCount: widget.products.image,
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               mainAxisSpacing: 16,
//               crossAxisSpacing: 16,
//               childAspectRatio: .50,
//             ),
//             itemBuilder: (context, index) {
//               final DemoProductModel product = widget.products![index];
//               return SizedBox(
//                 height: 320,
//                 child: FoodProductItemWidget(
//                   likeTapped: () {
//                     context.read<FoodHomeCubit>().setLikeId(product.id);
//                   },
//                   isLiked: state.likeIds.contains(product.id.toString()),
//                   product: product,
//                   onTap: () => Navigator.pushNamed(context, FoodNavigatorConst.foodBasket), smallButton: () {  },
                  
//                 ),
//               );
//             },
//           ),
//         );
//       },
//     );
//   }
// }
