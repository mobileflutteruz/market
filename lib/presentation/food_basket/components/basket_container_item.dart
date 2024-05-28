part of 'basket_components.dart';


class FoodBasketContainerItem extends StatelessWidget {
  void Function()? onTap;
  final String imageUrl;
  

  FoodBasketContainerItem({
    Key? key,
    this.onTap,
    required this.imageUrl,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: AppLayout.getHeight(80, context),
        width: AppLayout.getWidth(65, context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: ColorConstants.kGreyOrderBack,
        ),
        child: CachedNetworkImage(
              height: AppLayout.getHeight(80, context),
        width: AppLayout.getWidth(72, context),
          progressIndicatorBuilder: (context, url, downloadProgress) =>
              Center(
            child: CircularProgressIndicator.adaptive(
                value: downloadProgress.progress),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
          imageUrl: imageUrl,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
