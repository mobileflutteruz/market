import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/presentation/my_order/my_order_page.dart';
import 'package:karmango/presentation/profile/components/exit_button.dart';
import 'package:karmango/presentation/profile/components/profile_card_item.dart';
import 'package:karmango/presentation/profile/cubit/food_profile_cubit.dart';
import 'package:karmango/presentation/search/components/search_components.dart';
import 'package:karmango/presentation/search/cubit/search_cubit.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../core/utils/utils.dart';

class FoodSearchView extends StatefulWidget {
  const FoodSearchView({super.key});

  @override
  State<FoodSearchView> createState() => _FoodSearchViewState();
}

class _FoodSearchViewState extends State<FoodSearchView> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SearchedCubit, SearchState>(
      listener: (context, state) {},
      child: Buildable<SearchedCubit, SearchState, SearchdBuildableState>(
        properties: (buildable) => [
          buildable.notificationValue,
          buildable.profileUser,
        ],
        builder: (context, state) {
          final isGuest = state.foodUser == null;

          return Scaffold(
            backgroundColor: ColorConstants.cF6F6F6,
            appBar: FoodSearchAppBarWidget(),
            body: ListView(
              padding: AppUtils.kPaddingAll16,
              children: [
                _buildProfileCard(state, isGuest),
                const SizedBox(height: 16),
                _buildSettingsOptions(context, isGuest),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildProfileCard(SearchdBuildableState state, bool isGuest) {
    return GestureDetector(
      onTap: () {
        if (isGuest) {
          Navigator.pushNamed(context, FoodNavigatorConst.foodLoginScreen);
        } else {
          _navigateToProfileEdit(context, state);
        }
      },
      child: isGuest ? _buildGuestPrompt() : _buildUserProfileCard(state),
    );
  }

  Widget _buildGuestPrompt() {
    return Container(
      padding: AppUtils.kPaddingHor16Ver20,
      decoration: BoxDecoration(
        color: ColorConstants.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome, Guest!',
            style: Styles.manropeSemiBold20.copyWith(color: ColorConstants.c0E1A23),
          ),
          const SizedBox(height: 8),
          Text(
            'Log in to access personalized features.',
            style: Styles.manropeMedium14.copyWith(color: FoodColors.c909090),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, FoodNavigatorConst.foodLoginScreen),
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorConstants.c2472F2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            child: Text(
              'Login',
              style: Styles.manropeSemiBold16.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserProfileCard(SearchdBuildableState state) {
    final user = state.foodUser!.result;

    return Row(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: ColorConstants.cF5F5F5,
            shape: BoxShape.circle,
            image: user.image != null
                ? DecorationImage(image: FileImage(File(user.image)), fit: BoxFit.fill)
                : null,
          ),
          child: user.image == null ? IconConstants.user : null,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user.name ?? 'Your Name',
              style: Styles.interMedium16.copyWith(color: ColorConstants.c0E1A23),
            ),
            const SizedBox(height: 4),
            Text(
              user.phone ?? '',
              style: Styles.interRegular12.copyWith(color: ColorConstants.c8D909B),
            ),
          ],
        ),
      ],
    );
  }

  void _navigateToProfileEdit(BuildContext context, SearchdBuildableState state) {
    final cubit = context.read<FoodProfileCubit>();
    Navigator.pushNamed(context, FoodNavigatorConst.foodProfileEdit).then((value) {
      if (value != null && state.foodUser != null) {
        cubit.foodSetUser(state.foodUser!);
      }
    });
  }

  Widget _buildSettingsOptions(BuildContext context, bool isGuest) {
    return Column(
      children: [
        FoodProfileCardItemWidget(
          icon: IconConstants.myOrder,
          text: context.l10n.myOrder,
          onTap: () {
            if (isGuest) {
              _showLoginPrompt(context);
            } else {
              Navigator.push(context, MaterialPageRoute(builder: (_) => FoodMyOrderPage()));
            }
          },
        ),
        FoodProfileCardItemWidget(
          icon: IconConstants.myCard,
          text: context.l10n.myCards,
          onTap: () {
            if (isGuest) {
              _showLoginPrompt(context);
            } else {
              Navigator.pushNamed(context, FoodNavigatorConst.foodProfileCard);
            }
          },
        ),
        FoodProfileCardItemWidget(
          icon: IconConstants.setting,
          text: context.l10n.settings,
          onTap: () {
            if (isGuest) {
              _showLoginPrompt(context);
            } else {
              Navigator.pushNamed(context, FoodNavigatorConst.foodSettings);
            }
          },
        ),
        FoodExitButtonWidget(
          onTap: () => _showExitDialog(context),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  void _showLoginPrompt(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Login Required'),
        content: const Text('Please log in to access this feature.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, FoodNavigatorConst.foodLoginScreen);
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }

  void _showExitDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Exit App'),
        content: const Text('Do you want to exit?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () => exit(0),
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }
}
