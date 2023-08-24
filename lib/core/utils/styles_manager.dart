import 'package:flutter/material.dart';
import 'package:nectar/core/utils/assets_manager.dart';

import 'color_manager.dart';

abstract class StylesManager {
  static TextStyle splashTextStyle = const TextStyle(
    letterSpacing: 5.5,
    color: ColorManager.backgroundColorLight,
    fontFamily: AssetsManager.gilroyMedium,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}
