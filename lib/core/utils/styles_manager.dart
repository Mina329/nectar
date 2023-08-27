import 'package:flutter/material.dart';
import 'package:nectar/core/utils/assets_manager.dart';

import 'color_manager.dart';

abstract class StylesManager {
  // ----------------Medium style----------------
  static TextStyle splashTextStyle = const TextStyle(
    letterSpacing: 5.5,
    color: ColorManager.backgroundColorLight,
    fontFamily: AssetsManager.gilroyMedium,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static TextStyle gilroyMedium18 = const TextStyle(
    color: ColorManager.primaryColorLight,
    fontFamily: AssetsManager.gilroyMedium,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static TextStyle gilroyMedium16 = const TextStyle(
    color: ColorManager.lightShadeTextColor,
    fontFamily: AssetsManager.gilroyMedium,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
 
  static TextStyle gilroyMedium14 = const TextStyle(
    color: ColorManager.textColorLight,
    fontFamily: AssetsManager.gilroyMedium,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  // -----------SemiBold style---------------
  static TextStyle largeHeadingTextStyle = const TextStyle(
    color: ColorManager.backgroundColorLight,
    fontFamily: AssetsManager.gilroySemiBold,
    fontSize: 48,
    fontWeight: FontWeight.w600,
  );
  static TextStyle gilroySemiBold18 = const TextStyle(
    color: ColorManager.backgroundColorLight,
    fontFamily: AssetsManager.gilroySemiBold,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static TextStyle gilroySemiBold20 = const TextStyle(
    color: ColorManager.textColorLight,
    fontFamily: AssetsManager.gilroySemiBold,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static TextStyle gilroySemiBold26 = const TextStyle(
    color: ColorManager.textColorLight,
    fontFamily: AssetsManager.gilroySemiBold,
    fontSize: 26,
    fontWeight: FontWeight.w600,
  );
  static TextStyle gilroySemiBold24 = const TextStyle(
    color: ColorManager.textColorLight,
    fontFamily: AssetsManager.gilroySemiBold,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static TextStyle gilroySemiBold14 = const TextStyle(
    color: ColorManager.lightShadeTextColor,
    fontFamily: AssetsManager.gilroySemiBold,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
   static TextStyle gilroySemiBold16 = const TextStyle(
    color: ColorManager.lightShadeTextColor,
    fontFamily: AssetsManager.gilroySemiBold,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  //---------------Bold-----------------------------
  static TextStyle gilroyBold16 = const TextStyle(
    color: ColorManager.textColorLight,
    fontFamily: AssetsManager.gilroyBold,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );
}
