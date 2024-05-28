part of "constants.dart";

class AppSizes {
  static double getH(BuildContext context, var size) {
    return MediaQuery.of(context).size.height * size;
  }

  static double getW(BuildContext context, var size) {
    return MediaQuery.of(context).size.width * size;
  }
}
