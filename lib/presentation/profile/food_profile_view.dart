import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:karmango/config/di/injection.dart';
import 'package:karmango/config/token_data_source.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/constants/image_const.dart';
import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/core/utils/utils.dart';
import 'package:karmango/domain/model/mobile/profile/profile_model.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/presentation/my_order/my_order_page.dart';
import 'package:karmango/presentation/profile/components/about_app_page.dart';
import 'package:karmango/presentation/profile/components/exit_button.dart';
import 'package:karmango/presentation/profile/components/my_card_item.dart';
import 'package:karmango/presentation/profile/components/profile_app_bar.dart';
import 'package:karmango/presentation/profile/components/profile_card_item.dart';
import 'package:karmango/presentation/profile/cubit/food_profile_cubit.dart';
import 'package:lottie/lottie.dart';

class FoodProfileView extends StatefulWidget {
  const FoodProfileView({super.key});

  @override
  State<FoodProfileView> createState() => _FoodProfileViewState();
}

class _FoodProfileViewState extends State<FoodProfileView> {
  final tokenPreference = GetIt.instance<TokenPreference>();
  String? userToken;

  @override
  void initState() {
    super.initState();
    _loadUserToken();
  }

  Future<void> _loadUserToken() async {
    final token = await tokenPreference.getUserToken();
    setState(() {
      userToken = token;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => locator<FoodProfileCubit>()..prfileEditor(),
        child: BlocListener<FoodProfileCubit, FoodProfileState>(
          listener: (context, buildable) {
            if (buildable is FoodProfileBuildableState) {
              if (buildable.errorMessage.isNotEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(buildable.errorMessage)),
                );
              }
            }
          },
          child: Buildable<FoodProfileCubit, FoodProfileState,
              FoodProfileBuildableState>(
            properties: (buildable) => [buildable.userInfo],
            builder: (context, state) {
              return state.userInfo == null
                  ? _buildGuestUI(context)
                  : _buildUserUI(context);
            },
          ),
        ));
  }

  /// **Guest UI**: Token mavjud bo'lmaganda ko'rsatiladi
  Widget _buildGuestUI(BuildContext context) {
    return Scaffold(
      appBar: FoodProfileAppBar(title: context.l10n.profile),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: AppUtils.kPaddingHor16Ver20,
              decoration: ShapeDecoration(
                color: FoodColors.cF6F6F6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.l10n.signIn,
                    style: Styles.manropeSemiBold20.copyWith(
                      color: FoodColors.c0E1A23,
                    ),
                  ),
                  AppUtils.kGap8,
                  Text(
                    context.l10n.by_logging_in,
                    style: Styles.manropeMedium14.copyWith(
                      color: FoodColors.c909090,
                    ),
                  ),
                  AppUtils.kGap16,
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, FoodNavigatorConst.foodLoginScreen);
                    },
                    child: Container(
                      padding: AppUtils.kPaddingVertical8,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                        color: FoodColors.primaryColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: AppUtils.kBorderRadius8,
                        ),
                      ),
                      child: Text(
                        context.l10n.signIn,
                        style: Styles.manropeSemiBold16.copyWith(
                          color: FoodColors.cffffff,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _buildProfileGuestOptions(context),
          ],
        ),
      ),
    );
  }

  /// **User UI**: Token mavjud bo'lsa ko'rsatiladi
  Widget _buildUserUI(BuildContext context) {
    return Buildable<FoodProfileCubit, FoodProfileState,
        FoodProfileBuildableState>(
      properties: (buildable) => [buildable.status, buildable.userInfo],
      builder: (context, state) {
        // Common AppBar for User UI

        return Scaffold(
          appBar: FoodProfileAppBar(title: context.l10n.profile),
          backgroundColor: FoodColors.cffffff,
          body: switch (state.status) {
            FoodProfileStatus.loading => const Center(
                child: CircularProgressIndicator(),
              ),
            FoodProfileStatus.failure => Center(
                child: Text(
                  "Xatolik yuz berdi: ${state.errorMessage}",
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            FoodProfileStatus.success => _buildUserProfilePage(
                context,
                state.userInfo!,
              ),
            _ => const SizedBox.shrink(),
          },
        );
      },
    );
  }

  Widget _buildUserProfilePage(BuildContext context, UserResponse user) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        _buildProfileHeader(context, user),
        const SizedBox(height: 20),
        _buildProfileOptions(context),
      ],
    );
  }

  Widget _buildProfileHeader(BuildContext context, UserResponse user) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: user.result.image != null
                      ? NetworkImage(user.result.image!)
                      : AssetImage(ImageConstants.profileImage)
                          as ImageProvider,
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user.result.name ?? context.l10n.whats_your_name,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      user.result.phone ?? context.l10n.phoneNumber,
                      style:
                          const TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ],
                ),
                const SizedBox(width: 16),
              ],
            ),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context,FoodNavigatorConst.foodProfileEdit );
                },
                
                icon: IconConstants.arrowBackGrey)
          ],
        ),
        AppUtils.kGap16,
        FoodProfileCardWidget(
            isProfileCard: true,
            balance: "balance UZS",
            cardNumber: "carbnumber",
            cardData: "card Data"
            // "${foodUser.cards.first.expirationMonth}/${foodUser.cards.first.expirationYear}",
            ),
      ],
    );
  }

  Widget _buildProfileGuestOptions(BuildContext context) {
    return Column(
      children: [
        FoodProfileCardItemWidget(
          icon: IconConstants.setting,
          text: context.l10n.settings,
          onTap: () {
            Navigator.pushNamed(context, FoodNavigatorConst.foodSettings);
          },
        ),
        FoodProfileCardItemWidget(
          icon: IconConstants.phone,
          text: context.l10n.contactUs,
          onTap: () {
            Navigator.pushNamed(context, FoodNavigatorConst.foodConnectWithUs);
          },
        ),
        FoodProfileCardItemWidget(
          icon: IconConstants.category,
          text: context.l10n.aboutTheApplication,
          onTap: () {
            Navigator.pushNamed(context, FoodNavigatorConst.foodAbout);
          },
        ),
        AppUtils.kGap16,
        FoodExitButtonWidget(
          onTap: () => showCustomDialog(context),
        ),
        AppUtils.kGap16,
      ],
    );
  }

//!Bu USer uchun
  Widget _buildProfileOptions(BuildContext context) {
    return Column(
      children: [
        FoodProfileCardItemWidget(
          icon: IconConstants.myOrder,
          text: context.l10n.myOrder,
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const FoodMyOrderPage()));
          },
        ),
        FoodProfileCardItemWidget(
          icon: IconConstants.myCard,
          text: context.l10n.myCards,
          onTap: () {
            Navigator.pushNamed(context, FoodNavigatorConst.foodProfileCard);
          },
        ),
        FoodProfileCardItemWidget(
          icon: IconConstants.setting,
          text: context.l10n.settings,
          onTap: () {
            Navigator.pushNamed(context, FoodNavigatorConst.foodSettings);
          },
        ),
        FoodProfileCardItemWidget(
          icon: IconConstants.phone,
          text: context.l10n.contactUs,
          onTap: () {
            Navigator.pushNamed(context, FoodNavigatorConst.foodConnectWithUs);
          },
        ),
        FoodProfileCardItemWidget(
          icon: IconConstants.category,
          text: context.l10n.aboutTheApplication,
          onTap: () {
            Navigator.pushNamed(context, FoodNavigatorConst.foodAbout);
          },
        ),
        AppUtils.kGap16,
        FoodExitButtonWidget(
          onTap: () => showCustomDialog(context),
        ),
        AppUtils.kGap16,
      ],
    );
  }

  void showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: FoodColors.cffffff,
        title: CircleAvatar(
          radius: 27,
          backgroundColor: FoodColors.cFFDDDD,
          child: CircleAvatar(
            radius: 22,
            backgroundColor: FoodColors.cF83333,
            child: SizedBox(
              width: 24,
              height: 24,
              child: IconConstants.logoutWhite,
            ),
          ),
        ),
        content: RichText(
          text: TextSpan(
            text: context.l10n.doYouWantToExit,
            style: Styles.manropeSemiBold16.copyWith(
              color: FoodColors.c0E1A23,
            ),
          ),
        ),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: FoodColors.cA6AEBF.withOpacity(.5),
              fixedSize: Size(AppLayout.getWidth(120, context),
                  AppLayout.getHeight(48, context)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              context.l10n.no,
              style: Styles.manropeSemiBold16.copyWith(
                color: FoodColors.c0E1A23,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: FoodColors.primaryColor,
              fixedSize: Size(AppLayout.getWidth(120, context),
                  AppLayout.getHeight(48, context)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onPressed: () {
              context.read<FoodProfileCubit>().logout();
              Navigator.pop(context);
              Navigator.pushNamedAndRemoveUntil(context,
                  FoodNavigatorConst.foodLoginScreen, (route) => false);
            },
            child: Text(
              context.l10n.yes,
              style: Styles.manropeSemiBold16.copyWith(
                color: FoodColors.cffffff,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
