import 'package:flutter/material.dart';
import 'package:nectar/core/utils/color_manager.dart';

abstract class ThemeManager {
  static final lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: ColorManager.backgroundColorLight,
    primaryColor: ColorManager.primaryColorLight,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: ColorManager.primaryColorLight,
          foregroundColor: ColorManager.textColorBtn,
          shadowColor: ColorManager.accentColor,
          alignment: Alignment.center,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )),
    ),
  );
  static final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: ColorManager.backgroundColorDark,
    primaryColor: ColorManager.primaryColorDark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: ColorManager.primaryColorDark,
          foregroundColor: ColorManager.textColorBtn,
          shadowColor: ColorManager.accentColor,
          alignment: Alignment.center,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )),
    ),
  );
}
