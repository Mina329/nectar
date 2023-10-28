import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/strings_manager.dart';

class AppNameAnimation extends StatelessWidget {
  const AppNameAnimation({
    super.key,
    required this.logoAnimation,
  });

  final Animation<double> logoAnimation;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeTransition(
        opacity: logoAnimation,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AssetsManager.nectarImg,
              width: 195.w,
              height: 46.h,
              colorFilter: const ColorFilter.mode(
                ColorManager.green,
                BlendMode.srcIn,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              StringsManager.splashDescription.tr(),
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: ColorManager.green),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
