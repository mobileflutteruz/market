part of 'utils.dart';

sealed class AppUtils {
  AppUtils._();

  static const kSpacer = Spacer();

  static const kGap = Gap(0);
  static const kGap2 = Gap(2);
  static const kGap4 = Gap(4);
  static const kGap6 = Gap(6);
  static const kGap8 = Gap(8);
  static const kGap10 = Gap(10);
  static const kGap12 = Gap(12);
  static const kGap16 = Gap(16);
  static const kGap18 = Gap(18);
  static const kGap20 = Gap(20);
  static const kGap24 = Gap(24);
  static const kGap32 = Gap(32);
  static const kGap40 = Gap(40);
  static const kGap50 = Gap(50);
  static const kGap80 = Gap(80);

  /// divider
  static final kDivider = Divider(
    height: 1,
    color: Color(0xFFE3E3E3).withOpacity(.8),
  );
  static const kSliverDivider = SliverToBoxAdapter(
    child: Divider(
      height: 1,
      color: Color(0xFFEEEEEE),
    ),
  );

  /// padding
  static const kPadding0 = EdgeInsets.zero;
  static const kPaddingAll2 = EdgeInsets.all(2);
  static const kPaddingAll4 = EdgeInsets.all(4);
  static const kPaddingAll6 = EdgeInsets.all(6);
  static const kPaddingAll8 = EdgeInsets.all(8);
  static const kPaddingAll10 = EdgeInsets.all(10);
  static const kPaddingAll12 = EdgeInsets.all(12);
  static const kPaddingAll16 = EdgeInsets.all(16);
  static const kPaddingAll24 = EdgeInsets.all(24);
  static const kPaddingHorizontal4 = EdgeInsets.symmetric(horizontal: 4);
  static const kPaddingHorizontal12 = EdgeInsets.symmetric(horizontal: 12);
  static const kPaddingVertical8 = EdgeInsets.symmetric(vertical: 8);
  static const kPaddingHorizontal8 = EdgeInsets.symmetric(horizontal: 8);
  static const kPaddingVertical12 = EdgeInsets.symmetric(vertical: 12);
  static const kPaddingVertical16 = EdgeInsets.symmetric(vertical: 16);
  static const kPaddingHorizontal16 = EdgeInsets.symmetric(horizontal: 16);
  static const kPaddingHorizontal24 = EdgeInsets.symmetric(horizontal: 24);
  static const kPaddingHor32Ver20 =
      EdgeInsets.symmetric(horizontal: 32, vertical: 20);
  static const kPaddingBottom16 = EdgeInsets.fromLTRB(0, 0, 0, 16);
  static const kPaddingBottom2 = EdgeInsets.fromLTRB(0, 0, 0, 2);
  static const kPaddingHor8Ver2 =
  EdgeInsets.symmetric(horizontal: 8, vertical: 2);
  static const kPaddingL8R16B16T16 =
  EdgeInsets.only(left: 8, right: 16,top: 16,bottom:16);
  static const kPaddingHor12Ver10 =
  EdgeInsets.symmetric(horizontal: 14, vertical: 16);
  static const kPaddingHor14Ver16 =
      EdgeInsets.symmetric(horizontal: 14, vertical: 16);
  static const kPaddingHor16Ver12 =
      EdgeInsets.symmetric(horizontal: 16, vertical: 12);
  static const kPaddingHor16Ver24 =
      EdgeInsets.symmetric(horizontal: 16, vertical: 24);
  static const kPaddingHor24Ver16 =
      EdgeInsets.symmetric(horizontal: 16, vertical: 24);
  static const kPaddingHor16Ver20 =
      EdgeInsets.symmetric(horizontal: 16, vertical: 20);
  static const kPaddingHor16Ver8 =
      EdgeInsets.symmetric(horizontal: 16, vertical: 8);
  static const kPaddingHor12Ver8 =
      EdgeInsets.symmetric(horizontal: 12, vertical: 8);
  static const kPaddingHor16 = EdgeInsets.symmetric(horizontal: 16);

  static const kPaddingOnlyBtm16 = EdgeInsets.only(bottom: 16);
  static const kPaddingOnlyTop16 = EdgeInsets.only(top: 16);

  static const kPaddingAllB16 = EdgeInsets.fromLTRB(16, 16, 16, 0);
  static const kPaddingAllT16 = EdgeInsets.fromLTRB(16, 0, 16, 16);
  static const kPaddingL16T8R16B16 = EdgeInsets.fromLTRB(16, 8, 16, 16);
  static const kPaddingL16T4R16B16 = EdgeInsets.fromLTRB(16, 4, 16, 16);
  static const kPaddingL16T8R16B12 = EdgeInsets.fromLTRB(16, 8, 16, 12);
  static const kPaddingL16T4R16B12 = EdgeInsets.fromLTRB(16, 4, 16, 12);
  static const kPaddingL16T2R16B16 = EdgeInsets.fromLTRB(16, 2, 16, 16);
  static const kPaddingT0L16R16B12 = EdgeInsets.fromLTRB(16, 0, 16, 12);

  /// border radius
  static const kRadius = Radius.zero;
  static const kBorderRadius2 = BorderRadius.all(Radius.circular(2));
  static const kBorderRadius4 = BorderRadius.all(Radius.circular(4));
  static const kBorderRadius6 = BorderRadius.all(Radius.circular(6));
  static const kBorderRadius8 = BorderRadius.all(Radius.circular(8));
  static const kBorderRadius10 = BorderRadius.all(Radius.circular(10));
  static const kBorderRadius12 = BorderRadius.all(Radius.circular(12));
  static const kBorderRadius16 = BorderRadius.all(Radius.circular(16));
  static const kBorderRadius24 = BorderRadius.all(Radius.circular(24));
  static const kBorderRadius32 = BorderRadius.all(Radius.circular(32));
  static const kBorderRadiusVerTop20 =
      BorderRadius.vertical(top: Radius.circular(20.0));

  static const kShapeRoundedNone = RoundedRectangleBorder();
  static const kRadius12 = Radius.circular(12);
  static const kRadiusTLR12 = BorderRadius.only(
    topLeft: AppUtils.kRadius12,
    topRight: AppUtils.kRadius12,
  );

  static const kShapeRoundedAll12 = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  );
  static const kShapeRoundedAll10 = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  );
  static const kShapeRoundedBottom12 = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      bottomRight: Radius.circular(12),
      bottomLeft: Radius.circular(12),
    ),
  );

  static SizedBox sizeH2 = const SizedBox(height: 2);
  static SizedBox sizeH8 = const SizedBox(height: 8);
  static SizedBox sizeH10 = const SizedBox(height: 10);
  static SizedBox sizeH12 = const SizedBox(height: 12);
  static SizedBox sizeH16 = const SizedBox(height: 16);
  static SizedBox sizeH24 = const SizedBox(height: 24);

  static SizedBox sizeW6 = const SizedBox(width: 6);
  static SizedBox sizeW8 = const SizedBox(width: 8);
  static SizedBox sizeW12 = const SizedBox(width: 12);
  static SizedBox sizeW16 = const SizedBox(width: 16);

  static SliverGap gap16 = const SliverGap(16);

  static BorderRadius radiusAll8 = BorderRadius.circular(8);

  static void msg(BuildContext context, String message,
      {Color color = Colors.green}) {
    awesomeTopSnackbar(

      context,
      message,
      // textStyle: const TextStyle(
      //     color: Color.fromARGB(255, 20, 64, 83), fontStyle: FontStyle.italic, fontWeight: FontWeight.w400, fontSize: 24),
      backgroundColor: color,
      icon: const Icon(CupertinoIcons.clear_circled, color: Colors.white),
      // iconWithDecoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(20),
      //   border: Border.all(color: Colors.white),
      // ),
    );
    // final snackBar = SnackBar(
    //   elevation: 0,
    //   behavior: SnackBarBehavior.fixed,
    //   backgroundColor: Colors.transparent,
    //
    //   content: AwesomeSnackbarContent(
    //     title: 'On Snap!',
    //     message:
    //     'This is an example error message that will be shown in the body of snackbar!',
    //
    //     contentType: ContentType.failure,
    //
    //   ),
    // );
    //
    // ScaffoldMessenger.of(context)
    //   ..hideCurrentSnackBar()
    //   ..showSnackBar(snackBar);
  }

}
