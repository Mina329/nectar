import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/assets_manager.dart';

import 'color_manager.dart';

abstract class StylesManager {
  static TextStyle displaySmall = TextStyle(
    letterSpacing: 5.5,
    color: ColorManager.whiteText,
    fontFamily: AssetsManager.gilroyMedium,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );

// ###################### LIGHT #####################

  // ##################### SEMI_BOLD #####################

  static TextStyle bodySmallLIGHT = TextStyle(
    color: ColorManager.greySmall,
    fontFamily: AssetsManager.gilroySemiBold,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle labelMediumLIGHT = TextStyle(
    color: ColorManager.darkBlue,
    fontFamily: AssetsManager.gilroySemiBold,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle labelLargeLIGHT = TextStyle(
    color: ColorManager.whiteText,
    fontFamily: AssetsManager.gilroySemiBold,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle bodyLargeLIGHT = TextStyle(
    color: ColorManager.greyLarge,
    fontFamily: AssetsManager.gilroySemiBold,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle titleMediumLIGHT = TextStyle(
    color: ColorManager.darkgrey,
    fontFamily: AssetsManager.gilroySemiBold,
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle headingMediumLIGHT = TextStyle(
    color: ColorManager.darkBlue,
    fontFamily: AssetsManager.gilroySemiBold,
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle headingSmallLIGHT = TextStyle(
    color: ColorManager.darkBlue,
    fontFamily: AssetsManager.gilroySemiBold,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle displayLargeLIGHT = TextStyle(
    color: ColorManager.whiteText,
    fontFamily: AssetsManager.gilroySemiBold,
    fontSize: 48.sp,
    fontWeight: FontWeight.w600,
  );

  // ##################### MEDIUM #####################

  static TextStyle bodyMediumLIGHT = TextStyle(
    color: ColorManager.grayOpacity,
    fontFamily: AssetsManager.gilroyMedium,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );

  // ###################### BOLD #####################

  static TextStyle titleSmallLIGHT = TextStyle(
    color: ColorManager.darkBlue,
    fontFamily: AssetsManager.gilroyBold,
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
  );

// ###################### DARK #####################

  // ##################### SEMI_BOLD #####################

  static TextStyle bodySmallDARK = TextStyle(
    color: ColorManager.grayOpacity,
    fontFamily: AssetsManager.gilroySemiBold,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle labelMediumDARK = TextStyle(
    color: ColorManager.whiteText,
    fontFamily: AssetsManager.gilroySemiBold,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle labelLargeDARK = TextStyle(
    color: ColorManager.whiteText,
    fontFamily: AssetsManager.gilroySemiBold,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle bodyLargeDARK = TextStyle(
    color: ColorManager.whiteText,
    fontFamily: AssetsManager.gilroySemiBold,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle titleMediumDARK = TextStyle(
    color: ColorManager.grayOpacity,
    fontFamily: AssetsManager.gilroySemiBold,
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle headingMediumDARK = TextStyle(
    color: ColorManager.whiteText,
    fontFamily: AssetsManager.gilroySemiBold,
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle headingSmallDARK = TextStyle(
    color: ColorManager.greyLarge,
    fontFamily: AssetsManager.gilroySemiBold,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle displayLargeDARK = TextStyle(
    color: ColorManager.whiteText,
    fontFamily: AssetsManager.gilroySemiBold,
    fontSize: 48.sp,
    fontWeight: FontWeight.w600,
  );

  // ##################### MEDIUM #####################
  static TextStyle bodyMediumDARK = TextStyle(
    color: ColorManager.grayOpacity,
    fontFamily: AssetsManager.gilroyMedium,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
  // ###################### BOLD #####################
  static TextStyle titleSmallDARK = TextStyle(
    color: ColorManager.whiteText,
    fontFamily: AssetsManager.gilroyBold,
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
  );
}
