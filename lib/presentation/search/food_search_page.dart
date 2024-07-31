import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/config/di/injection.dart';
import 'package:karmango/presentation/search/bloc/search_bloc.dart';
import 'package:karmango/presentation/search/food_search_view.dart';
import 'package:flutter/material.dart';

class FoodSearchPage extends StatelessWidget {
  const FoodSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        var cubit = locator<SearchBloc>();
        return cubit;
      },
      child: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          return const FoodSearchView();
        },
      ),
    );
  }
}
