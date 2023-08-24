import 'package:flutter/material.dart';
import 'package:nectar/core/utils/color_manager.dart';

abstract class ThemeManager {
  static final lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: ColorManager.backgroundColorLight,
    primaryColor: ColorManager.primaryColorLight,
    
  );
} 
