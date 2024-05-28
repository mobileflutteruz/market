part of "../widgets/all_components.dart";

class FoodSplashView extends StatefulWidget {
  const FoodSplashView({super.key});

  @override
  State<FoodSplashView> createState() => _FurnitureSplashViewState();
}

class _FurnitureSplashViewState extends State<FoodSplashView> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
    ).then(
      (value) async {
        Navigator.pushNamed(context, FoodNavigatorConst.foodLoginScreen);
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(statusBarColor: FurnitureColors.transparent),
      child: Scaffold(
        body: Center(
          child: FoodIcons.karmanLogo,
        ),
      ),
    );
  }
}
