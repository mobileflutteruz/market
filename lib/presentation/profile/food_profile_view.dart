import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:karmango/config/di/injection.dart';
import 'package:karmango/config/token_data_source.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/constants/image_const.dart';
import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/domain/model/mobile/profile/profile_model.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/presentation/profile/cubit/food_profile_cubit.dart';

class FoodProfileView extends StatefulWidget {
  const FoodProfileView({super.key});

  @override
  State<FoodProfileView> createState() => _FoodProfileViewState();
}

class _FoodProfileViewState extends State<FoodProfileView> {
  final tokenPreference = GetIt.instance<TokenPreference>();
  String? userToken;
  String? token;

  @override
  void initState() {
    super.initState();
    _loadUserToken(); // User tokenni yuklaymiz
    context
        .read<FoodProfileCubit>()
        .prfileEditor(); // Profilni tahrirlashni boshlaymiz
  }

  @override
  void dispose() {
  
    super.dispose();
  }

  Future<void> _loadUserToken() async {
  final token = await tokenPreference.getUserToken();

  if (token != userToken) {
    setState(() {
      userToken = token;
       
    });
  }
}


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<FoodProfileCubit>(),
      child: Buildable<FoodProfileCubit, FoodProfileState,
          FoodProfileBuildableState>(
        properties: (buildable) => [
          buildable.userInfo,
          buildable.token,
        
          buildable.loading,
          buildable.error,
        ],
        builder: (context, state) {
          if (state.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.error != null) {
            return Scaffold(
              body: Center(
                child: Text("Xatolik yuz berdi: ${state.error.toString()}"),
              ),
            );
          }

          final user = state.userInfo;
            print("TEKSHIIIIIIIIIIIIIIIIIIIIR NAMEEEEEEEEEEEE: ${user?.result!.name.toString()}");
                print("TEKSHIIIIIIIIIIIIIIIIIIIIR USERNAME: ${userToken}");
                print("TEKSHIIIIIIIIIIIIIIIIIIIIR USER DATAAA: ${user.toString()}");


          if (user?.result != null &&
              _loadUserToken() != null) {
              
            return _buildUserProfilePage(context, user!);
          } else {
            return _buildRegisterPage(context);
          }
        },
      ),
    );
  }

  Widget _buildUserProfilePage(BuildContext context, ProfileModel user) {
    return Scaffold(
      backgroundColor: FoodColors.cffffff,
      appBar: AppBar(title: Text(context.l10n.profile)),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildProfileHeader(context, user),
          const SizedBox(height: 20),
          _buildProfileOptions(context),
        ],
      ),
    );
  }

  Widget _buildRegisterPage(BuildContext context) {
    return Scaffold(
      backgroundColor: FoodColors.cffffff,
      appBar: AppBar(title: Text(context.l10n.signUp)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.l10n.by_logging_in,
              style: const TextStyle(fontSize: 18, color: Colors.black54),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, FoodNavigatorConst.foodLoginScreen);
              },
              child: Text(context.l10n.signIn),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context, ProfileModel user) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: user.result!.image! != null
              ? NetworkImage(user.result!.image!)
              : AssetImage(ImageConstants.person) as ImageProvider,
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user.result!.name ?? context.l10n.whats_your_name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              user.result!.phone ?? context.l10n.phoneNumber,
              style: const TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildProfileOptions(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.shopping_bag),
          title: Text(context.l10n.myOrder),
          onTap: () {
            Navigator.pushNamed(context, FoodNavigatorConst.foodProfileCard);
          },
        ),
        ListTile(
          leading: const Icon(Icons.credit_card),
          title: Text(context.l10n.myCards),
          onTap: () {
            Navigator.pushNamed(context, FoodNavigatorConst.foodSettings);
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: Text(context.l10n.settings),
          onTap: () {
            Navigator.pushNamed(context, FoodNavigatorConst.foodSettings);
          },
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: Text(context.l10n.exit),
          onTap: () {
            context.read<FoodProfileCubit>().logout();
            Navigator.pushNamedAndRemoveUntil(
              context,
              FoodNavigatorConst.foodLoginScreen,
              (route) => false,
            );
          },
        ),
      ],
    );
  }
}
