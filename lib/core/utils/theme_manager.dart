import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/color_manager.dart';
import 'package:nectar/core/utils/styles_manager.dart';



ThemeData getLightThemeData(){
  return ThemeData.light().copyWith(
    scaffoldBackgroundColor: ColorManager.whiteBackground,
    hoverColor: ColorManager.secondaryBackgroundLIGHT,
    primaryColor: ColorManager.greenPrimary,
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        iconSize: 24.sp,
      ),
    ),
    iconTheme: IconThemeData(size: 24.sp, color: ColorManager.darkBluePrimary),
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
      unselectedLabelStyle: headingSmallLIGHT,
      unselectedItemColor: ColorManager.darkBlue,
      selectedLabelStyle:
          headingSmallLIGHT.copyWith(color: ColorManager.green),
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
    dividerColor: ColorManager.green,
    textTheme: TextTheme(
      displayLarge: displayLargeLIGHT,
      titleMedium: titleMediumLIGHT,
      titleSmall: titleSmallLIGHT,
      headlineMedium: headingMediumLIGHT,
      bodySmall: bodySmallLIGHT,
      bodyMedium: bodyMediumLIGHT,
      bodyLarge: bodyLargeLIGHT,
      labelMedium: labelMediumLIGHT,
      labelLarge: labelLargeLIGHT,
      headlineSmall: headingSmallLIGHT,
      displaySmall: displaySmall,
      titleLarge: titleLargeLIGHT,
    ),
  );

}

ThemeData getDarkThemeData(){
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: ColorManager.darkBlueBackground,
    hoverColor: ColorManager.secondaryBackgroundDARK,
    primaryColor: ColorManager.darkBluePrimary,
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        iconSize: 24.sp,
      ),
    ),
    iconTheme: IconThemeData(size: 24.sp, color: ColorManager.grayOpacity),
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
      backgroundColor: ColorManager.darkBlueBackground,
      unselectedLabelStyle: headingSmallDARK,
      unselectedItemColor: ColorManager.greyLarge,
      selectedLabelStyle: headingSmallDARK
          .copyWith(color: ColorManager.greySmall),
      unselectedIconTheme: const IconThemeData(color: ColorManager.greyLarge),
      selectedIconTheme: const IconThemeData(color: ColorManager.greySmall),
      selectedItemColor: ColorManager.greySmall,
      type: BottomNavigationBarType.fixed,
    ),
    textButtonTheme: TextButtonThemeData(
      style: const ButtonStyle().copyWith(
        overlayColor: MaterialStatePropertyAll(
          ColorManager.accentColor.withAlpha(20),
        ),
      ),
    ),
    dividerColor: ColorManager.grayOpacity,
    textTheme: TextTheme(
      displayLarge: displayLargeDARK,
      titleMedium: titleMediumDARK,
      titleSmall: titleSmallDARK,
      headlineMedium: headingMediumDARK,
      bodySmall: bodySmallDARK,
      bodyMedium: bodyMediumDARK,
      bodyLarge: bodyLargeDARK,
      labelMedium: labelMediumDARK,
      labelLarge: labelLargeDARK,
      headlineSmall: headingSmallDARK,
      displaySmall: displaySmall,
      titleLarge: titleLargeDARK,
    ),
  );
}
