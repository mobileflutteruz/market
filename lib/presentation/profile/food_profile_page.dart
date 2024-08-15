import 'package:karmango/presentation/profile/cubit/food_profile_cubit.dart';
import 'package:karmango/presentation/profile/food_profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../config/di/injection.dart';

class FoodProfilePage extends StatelessWidget {
  const FoodProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        var cubit = locator<FoodProfileCubit>();
        return cubit;
      },
      child: const FoodProfileView(),
    );
  }
}
