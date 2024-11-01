// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:karmango/config/di/injection.dart';
// import 'package:karmango/presentation/search/bloc/search_bloc.dart';
// import 'package:karmango/presentation/search/cubit/search_cubit.dart';
// import 'package:karmango/presentation/search/cubit/search_state.dart';
// import 'package:karmango/presentation/search/food_search_view.dart';
// import 'package:flutter/material.dart';

// class FoodSearchPage extends StatelessWidget {
//   const FoodSearchPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => locator<SearchCubit>(),
//       child: FoodSearchContent(),
//     );
//   }
// }

// class FoodSearchContent extends StatelessWidget {
//   const FoodSearchContent({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<SearchCubit, SearchState>(
//       builder: (context, state) {
//         if (state.apiStatus == ApiStatus.loading) {
//           return const Center(child: CircularProgressIndicator());
//         } else if (state.apiStatus == ApiStatus.error) {
//           return const Center(child: Text('Error occurred'));
//         } else if (state.apiStatus == ApiStatus.success) {
//           return const Center(child: Text('VIEW'));
//           // return FoodSearchView(searchProduct: state.searchProduct);
//         } else {
//           return const Center(child: Text('Start searching'));
//         }
//       },
//     );
//   }
// }


