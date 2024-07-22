part of 'basket_components.dart';

class BasketCounter extends StatefulWidget {
  const BasketCounter({super.key});

  @override
  _PlusMinusButtonsExampleState createState() =>
      _PlusMinusButtonsExampleState();
}

class _PlusMinusButtonsExampleState extends State<BasketCounter> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _counter = (_counter > 0) ? _counter - 1 : 0;
              });
            },
            child: _buildIconButton(icon: Icons.remove),
          ),
          AppUtils.kGap16,
          Text(
            '$_counter',
            style: Styles.manropeMedium14.copyWith(
              color: ColorConstants.c0E1A23,
            ),
          ),
          AppUtils.kGap16,
          GestureDetector(
            onTap: () {
              setState(
                () {
                  _counter++;
                },
              );
            },
            child: _buildIconButton(
              icon: Icons.add,
            ),
          ),
        ],
      ),
    );
  }

  Container _buildIconButton({required IconData icon}) {
    return Container(
      height: AppLayout.getHeight(32, context),
      width: AppLayout.getHeight(32, context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: ColorConstants.cF5F5F8,
      ),
      child: Icon(
        icon,
        size: AppLayout.getHeight(14, context),
      ),
    );
  }
}
