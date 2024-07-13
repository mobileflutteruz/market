import 'package:flutter/material.dart';
import '../../core/constants/constants.dart';

class MainTheme {
  static const Color _whiteColor = Colors.white;
  static const Color _blackColor = Color(0xff242424);

  static ThemeData light = ThemeData(
      useMaterial3: true,
      fontFamily: "Manrope",
      brightness: Brightness.light,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          textStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: _whiteColor,
          ),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        elevation: 0,
        backgroundColor: Colors.blue,
        extendedTextStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: _whiteColor,
        ),
      ),
      appBarTheme: const AppBarTheme(
          foregroundColor: _blackColor,
          backgroundColor: _whiteColor,
          elevation: 2,
          titleTextStyle: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: _blackColor)),
      scaffoldBackgroundColor: Colors.white,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.blue,
        unselectedItemColor: ColorConstants.navBarIcon,
        showSelectedLabels: true,
        elevation: 20,
        showUnselectedLabels: true,
        selectedLabelStyle: Styles.manropeMedium12,
        unselectedLabelStyle: Styles.manropeMedium12,
      ),
      tabBarTheme: TabBarTheme(
        labelStyle: Styles.manropeSemiBold14.copyWith(
          color: const Color(0xFF2472F2),
        ),
        unselectedLabelColor: const Color(0xFF8B96A5),
        dividerColor: Colors.transparent,
        unselectedLabelStyle: Styles.manropeMedium14.copyWith(
          color: const Color(0xFF8B96A5),
        ),
        indicatorColor: Colors.white,
        labelColor: const Color(0xFF2472F2),
        indicatorSize: TabBarIndicatorSize.tab,
        overlayColor: WidgetStateColor.resolveWith(
          (states) => Colors.transparent,
        ),
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(8), // Creates border
          color: Colors.white,
        ),
      ),
      radioTheme: const RadioThemeData());
}
