part of 'search_components.dart';


class FoodSearchAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const FoodSearchAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: FoodColors.cffffff,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: IconConstants.leftArrow,
        ),
      ),
      elevation: 20,
      surfaceTintColor: FoodColors.cffffff,
      shadowColor: const Color(0x11050505),
      foregroundColor: FoodColors.cffffff,
      title: const FoodSearchTextFieldWidget(),
      centerTitle: false,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
