import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/assets_manager.dart';

import 'color_manager.dart';

class StylesManager {
  static TextStyle get displaySmall => TextStyle(
        letterSpacing: 5.5,
        color: ColorManager.whiteText,
        fontFamily: AssetsManager.gilroyMedium,
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      );

// ###################### LIGHT #####################

// ##################### SEMI_BOLD #####################

  static TextStyle get bodySmallLIGHT => TextStyle(
        color: ColorManager.greySmall,
        fontFamily: AssetsManager.gilroySemiBold,
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelMediumLIGHT => TextStyle(
        color: ColorManager.darkBlue,
        fontFamily: AssetsManager.gilroySemiBold,
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelLargeLIGHT => TextStyle(
        color: ColorManager.whiteText,
        fontFamily: AssetsManager.gilroySemiBold,
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get bodyLargeLIGHT => TextStyle(
        color: ColorManager.greyLarge,
        fontFamily: AssetsManager.gilroySemiBold,
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleMediumLIGHT => TextStyle(
        color: ColorManager.darkgrey,
        fontFamily: AssetsManager.gilroySemiBold,
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get headingMediumLIGHT => TextStyle(
        color: ColorManager.darkBlue,
        fontFamily: AssetsManager.gilroySemiBold,
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get headingSmallLIGHT => TextStyle(
        color: ColorManager.darkBlue,
        fontFamily: AssetsManager.gilroySemiBold,
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get displayLargeLIGHT => TextStyle(
        color: ColorManager.whiteText,
        fontFamily: AssetsManager.gilroySemiBold,
        fontSize: 48.sp,
        fontWeight: FontWeight.w600,
      );

// ##################### MEDIUM #####################

  static TextStyle get bodyMediumLIGHT => TextStyle(
        color: ColorManager.grayOpacity,
        fontFamily: AssetsManager.gilroyMedium,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      );

// ###################### BOLD #####################

  static TextStyle get titleSmallLIGHT => TextStyle(
        color: ColorManager.darkBlue,
        fontFamily: AssetsManager.gilroyBold,
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleLargeLIGHT => TextStyle(
        color: ColorManager.darkBlue,
        fontFamily: AssetsManager.gilroyBold,
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
      );

// ###################### DARK #####################

// ##################### SEMI_BOLD #####################

  static TextStyle get bodySmallDARK => TextStyle(
        color: ColorManager.grayOpacity,
        fontFamily: AssetsManager.gilroySemiBold,
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelMediumDARK => TextStyle(
        color: ColorManager.whiteText,
        fontFamily: AssetsManager.gilroySemiBold,
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelLargeDARK => TextStyle(
        color: ColorManager.whiteText,
        fontFamily: AssetsManager.gilroySemiBold,
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get bodyLargeDARK => TextStyle(
        color: ColorManager.whiteText,
        fontFamily: AssetsManager.gilroySemiBold,
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleMediumDARK => TextStyle(
        color: ColorManager.grayOpacity,
        fontFamily: AssetsManager.gilroySemiBold,
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get headingMediumDARK => TextStyle(
        color: ColorManager.whiteText,
        fontFamily: AssetsManager.gilroySemiBold,
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get headingSmallDARK => TextStyle(
        color: ColorManager.greyLarge,
        fontFamily: AssetsManager.gilroySemiBold,
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get displayLargeDARK => TextStyle(
        color: ColorManager.whiteText,
        fontFamily: AssetsManager.gilroySemiBold,
        fontSize: 48.sp,
        fontWeight: FontWeight.w600,
      );

// ##################### MEDIUM #####################
  static TextStyle get bodyMediumDARK => TextStyle(
        color: ColorManager.grayOpacity,
        fontFamily: AssetsManager.gilroyMedium,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      );
// ###################### BOLD #####################
  static TextStyle get titleSmallDARK => TextStyle(
        color: ColorManager.whiteText,
        fontFamily: AssetsManager.gilroyBold,
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleLargeDARK => TextStyle(
        color: ColorManager.whiteText,
        fontFamily: AssetsManager.gilroyBold,
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
      );
}
