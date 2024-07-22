part of 'basket_components.dart';


class FoodBasketSuccessfulPage extends StatefulWidget {
  const FoodBasketSuccessfulPage({super.key});

  @override
  State<FoodBasketSuccessfulPage> createState() => _FoodBasketSuccessfulPageState();
}

class _FoodBasketSuccessfulPageState extends State<FoodBasketSuccessfulPage>{
  @override
  Widget build(BuildContext context) {
    
    throw UnimplementedError();
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppSizes.getH(context, .02)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  
                
                    IconConstants.success,
                    SizedBox(height: AppSizes.getH(context, .05)),

                    Text(
                      context.l10n.orderAccepted,
                      textAlign: TextAlign.center,
                      style:Styles.manropeSemiBold20.copyWith(
                        color: ColorConstants.c0E1A23,
                      ),),
                    //  SizedBox(height: AppSizes.getH(context, .02)),
                    Text(
                       context.l10n.yourOrderHasBeenConfirmedOnTheDay,
          
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style: Styles.manropeRegular13.copyWith(
                        color: ColorConstants.c7C8A9D,
                      )

                    ),
                    Text(
                      'ID: #456564 ',
                      style:Styles.manropeSemiBold13.copyWith(
                        color: ColorConstants.c2473F2,
                      )

                    ),
                  ],
                ),
              ),
              //  SizedBox(height: AppSizes.getH(context, .35)),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                
                    CustomColorButton(
                      width: AppSizes.getW(context, 1),
                      height: AppSizes.getH(context, 1),
                      color: ColorConstants.kblueMain,
                      title: context.l10n.close,
                      onTap: () {},
                      textColor: ColorConstants.cffffff,
                    ),
                
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

