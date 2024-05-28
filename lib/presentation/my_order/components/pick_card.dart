part of 'my_order_components.dart';


class FoodPickCardWidget extends StatefulWidget {
  const FoodPickCardWidget({super.key});

  @override
  State<FoodPickCardWidget> createState() => _FoodPickCardWidgetState();
}

class _FoodPickCardWidgetState extends State<FoodPickCardWidget> {
  int _site = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          2,
              (index) => Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _site = index;
                });
              },
              child: Container(
                height: 76,
                padding: AppUtils.kPaddingAll16,
                decoration: ShapeDecoration(
                  color: FoodColors.cF9F9FB,
                  shape: const RoundedRectangleBorder(
                    borderRadius: AppUtils.kBorderRadius10,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 65,
                      height: 44,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    AppUtils.kGap16,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '9860*****9650',
                          style: Styles.manropeMedium12.copyWith(
                            color: const Color(0xFFA6AEBF),
                          ),
                        ),
                        Text(
                          '108 648,74 UZS',
                          style: Styles.manropeSemiBold14.copyWith(
                            color: FoodColors.c212121,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Radio(
                      activeColor: FoodColors.c2473F2,
                      focusColor: FoodColors.cC6C8CE,
                      value: index,
                      groupValue: _site,
                      onChanged: (value) {
                        setState(() {
                          _site = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        AppUtils.kGap8,
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, NavigatorConst.profileCard),
          child: Container(
            padding: AppUtils.kPaddingVertical16,
            decoration: ShapeDecoration(
              color: FoodColors.cF9F9FB,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  CupertinoIcons.add_circled_solid,
                  color: Color(0xFF26B834),
                  size: 30,
                ),
                AppUtils.kGap24,
                Text(
                    'Янги карта кушиш',
                    style: Styles.manropeMedium16.copyWith(
                      color: FoodColors.c212121,
                    )

                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}