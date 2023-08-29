import 'package:flutter/material.dart';
import 'package:nectar/core/utils/color_manager.dart';
import 'package:nectar/core/utils/styles_manager.dart';

abstract class ThemeManager {
  static final lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: ColorManager.whiteBackground,
    primaryColor: ColorManager.greenPrimary,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.green,
        foregroundColor: ColorManager.whiteText,
        shadowColor: ColorManager.accentColor,
        alignment: Alignment.center,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      backgroundColor: Colors.white,
      unselectedLabelStyle: StylesManager.headingSmallLIGHT,
      unselectedItemColor: ColorManager.darkBlue,
      selectedLabelStyle:
          StylesManager.headingSmallLIGHT.copyWith(color: ColorManager.green),
      unselectedIconTheme: const IconThemeData(color: ColorManager.darkBlue),
      selectedIconTheme: const IconThemeData(color: ColorManager.green),
      selectedItemColor: ColorManager.green,
      type: BottomNavigationBarType.shifting,
    ),
    textButtonTheme: TextButtonThemeData(
      style: const ButtonStyle().copyWith(
        overlayColor: MaterialStatePropertyAll(
          ColorManager.accentColor.withAlpha(20),
        ),
      ),
    ),
    textTheme: TextTheme(
      displayLarge: StylesManager.displayLargeLIGHT,
      titleMedium: StylesManager.titleMediumLIGHT,
      titleSmall: StylesManager.titleSmallLIGHT,
      headlineMedium: StylesManager.headingMediumLIGHT,
      bodySmall: StylesManager.bodySmallLIGHT,
      bodyMedium: StylesManager.bodyMediumLIGHT,
      bodyLarge: StylesManager.bodyLargeLIGHT,
      labelMedium: StylesManager.labelMediumLIGHT,
      labelLarge: StylesManager.labelLargeLIGHT,
      headlineSmall: StylesManager.headingSmallLIGHT,
      displaySmall: StylesManager.displaySmall,
    ),
  );

  static final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: ColorManager.darkBlueBackground,
    primaryColor: ColorManager.darkBluePrimary,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.green,
        foregroundColor: ColorManager.whiteText,
        shadowColor: ColorManager.accentColor,
        alignment: Alignment.center,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      backgroundColor: ColorManager.darkBluePrimary,
      unselectedLabelStyle: StylesManager.headingSmallDARK,
      unselectedItemColor: ColorManager.greyLarge,
      selectedLabelStyle: StylesManager.headingSmallDARK
          .copyWith(color: ColorManager.greySmall),
      unselectedIconTheme: const IconThemeData(color: ColorManager.greyLarge),
      selectedIconTheme: const IconThemeData(color: ColorManager.greySmall),
      selectedItemColor: ColorManager.greySmall,
      type: BottomNavigationBarType.shifting,
    ),
    textButtonTheme: TextButtonThemeData(
      style: const ButtonStyle().copyWith(
        overlayColor: MaterialStatePropertyAll(
          ColorManager.accentColor.withAlpha(20),
        ),
      ),
    ),
    textTheme: TextTheme(
      displayLarge: StylesManager.displayLargeDARK,
      titleMedium: StylesManager.titleMediumDARK,
      titleSmall: StylesManager.titleSmallDARK,
      headlineMedium: StylesManager.headingMediumDARK,
      bodySmall: StylesManager.bodySmallDARK,
      bodyMedium: StylesManager.bodyMediumDARK,
      bodyLarge: StylesManager.bodyLargeDARK,
      labelMedium: StylesManager.labelMediumDARK,
      labelLarge: StylesManager.labelLargeDARK,
      headlineSmall: StylesManager.headingSmallDARK,
      displaySmall: StylesManager.displaySmall,
    ),
  );
}
