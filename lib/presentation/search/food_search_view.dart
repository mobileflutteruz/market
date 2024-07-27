// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:karmango/config/di/injection.dart';
// import 'package:karmango/core/constants/constants.dart';
// import 'package:karmango/core/utils/utils.dart';
// import 'package:karmango/presentation/components/input.dart';
// import 'package:karmango/presentation/components/loader_widget.dart';
// import 'package:karmango/presentation/search/cubit/search_cubit.dart';
// import 'package:karmango/presentation/search/cubit/search_state.dart';


// class SearchScreen extends StatelessWidget {
//   SearchScreen({super.key});

//   final TextEditingController searchController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) {
//         var cubit = locator<SearchCubit>();
//         cubit.fetch();
//         return cubit;
//       },
//       child: BlocListener<SearchCubit, SearchBuildableState>(
//         listener: (context, state) {
//           if (state is FavouritesBuildableState) {
//             if (state.errorMessage.isNotEmpty) {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(content: Text(state.errorMessage)),
//               );
//             } 
//           }
//         },
//         child: Buildable<FavouritesCubit, FavouritesState, FavouritesBuildableState>(
//           properties: (buildable) => [
//             buildable.failure,
//             buildable.loading,
//             buildable.success,
//             buildable.favourites,
//             buildable.likeIds,
//           ],
//           builder: (context, state) {
//             if (state.failure) {
//               return const Center(
//                 child: Text("Something went wrong"),
//               );
//             }
//             if (state.loading && (state.favourites == null || state.favourites!.result!.isEmpty)) {
//               return const LoaderWidget();
//             }
//             if (state.favourites == null || state.favourites!.result!.isEmpty) {
//               return Scaffold(
//                 appBar: CommonAppBar(title: context.l10n.favorites),
//                 body: CustomScrollView(
//                   slivers: [
//                     const FoodInfoWidget(favouritesCount: 0),
//                     SliverToBoxAdapter(
//                       child: Column(
//                         children: [
//                           AppUtils.kGap40,
//                           Lottie.asset('assets/animation/food_empty.json'),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             }
//             return CustomScrollView(
//               slivers: [
//                 SliverAppBar(
//                   automaticallyImplyLeading: false,
//                   actions: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 8, right: 16),
//                       child: GestureDetector(
//                         onTap: () => Navigator.pop,
//                         child: Container(
//                           width: 56,
//                           height: 56,
//                           padding: const EdgeInsets.all(22),
//                           decoration: ShapeDecoration(
//                             color: const Color(0xFFF5F5F5),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                           child: IconConstants.search,
//                           // child: AppIcons.searchExitIcon,
//                         ),
//                       ),
//                     ),
//                   ],
//                   title: InputWidget(
//                     hintText: 'Running',
//                     prefixIcon: IconConstants.search,
//                     textEditingController: searchController,
//                     onChanged: (String value) {
//                       context
//                           .read<SearchBloc>()
//                           .add(SearchProductsEvent(inputText: value));
//                     },
//                   ),
//                 ),
//                 state.status == SearchStatus.initial
//                     ? SliverFillRemaining(
//                         child: Padding(
//                           padding: AppUtils.kPaddingHorizontal24,
//                           child: Column(
//                             children: [
//                               AppUtils.kGap24,
//                               const Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text(
//                                     'Недавний',
//                                     style: TextStyle(
//                                       color: Color(0xFF212121),
//                                       fontSize: 20,
//                                       fontFamily: 'Museo Sans Cyrl',
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                   Text(
//                                     'Очистить все',
//                                     textAlign: TextAlign.right,
//                                     style: TextStyle(
//                                       color: Color(0xFFFF5001),
//                                       fontSize: 16,
//                                       fontFamily: 'Museo Sans Cyrl',
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               AppUtils.kGap24,
//                               const Divider(
//                                 height: 1,
//                                 color: Color(0xFFEEEEEE),
//                               ),
//                               AppUtils.kGap24,
//                               ...List.generate(
//                                 10,
//                                 (index) => Padding(
//                                   padding: AppUtils.kPaddingOnlyBtm16,
//                                   child: Row(
//                                     children: [
//                                       const Expanded(
//                                         child: Text(
//                                           'Nike Wrapshot Classic',
//                                           style: TextStyle(
//                                             color: Color(0xFF757575),
//                                             fontSize: 18,
//                                             fontFamily: 'Museo Sans Cyrl',
//                                             fontWeight: FontWeight.w400,
//                                           ),
//                                         ),
//                                       ),
//                                       IconButton(
//                                         onPressed: () {},
//                                         icon: const Icon(Icons.close),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       )
//                     : state.status == SearchStatus.loading
//                         ? const SliverFillRemaining(
//                             child: LoaderWidget(),
//                           )
//                         : SliverFillRemaining(
//                             child: Padding(
//                               padding: AppUtils.kPaddingHorizontal24,
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   AppUtils.kGap16,
//                                   Text.rich(
//                                     TextSpan(
//                                       children: [
//                                         const TextSpan(
//                                           text: 'Результаты для “',
//                                           style: TextStyle(
//                                             color: Color(0xFF212121),
//                                             fontSize: 20,
//                                             fontFamily: 'Museo Sans Cyrl',
//                                             fontWeight: FontWeight.w600,
//                                           ),
//                                         ),
//                                         TextSpan(
//                                           text: searchController.text.trim(),
//                                           style: const TextStyle(
//                                             color: Color(0xFFFF5001),
//                                             fontSize: 20,
//                                             fontFamily: 'Museo Sans Cyrl',
//                                             fontWeight: FontWeight.w600,
//                                           ),
//                                         ),
//                                         const TextSpan(
//                                           text: '”',
//                                           style: TextStyle(
//                                             color: Color(0xFF212121),
//                                             fontSize: 20,
//                                             fontFamily: 'Museo Sans Cyrl',
//                                             fontWeight: FontWeight.w600,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   AppUtils.kGap8,
//                                   Text(
//                                     '${state.products.length} найдено',
//                                     textAlign: TextAlign.right,
//                                     style: const TextStyle(
//                                       color: Color(0xFFFF5001),
//                                       fontSize: 16,
//                                       fontFamily: 'Museo Sans Cyrl',
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                   // Expanded(
//                                   //   child: state.products.isEmpty
//                                   //       ? const EmptyMyOrderWidget(
//                                   //           title: "Не найдено",
//                                   //           description:
//                                   //               "К сожалению, введенное вами ключевое слово не найдено. Проверьте еще раз или выполните поиск по другому ключевому слову.",
//                                   //         )
//                                   //       : GridProductsViewWidget(
//                                   //           products: state.products,
//                                   //         ),
//                                   // ),
//                                 ],
//                               ),
//                             ),
//                           ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
