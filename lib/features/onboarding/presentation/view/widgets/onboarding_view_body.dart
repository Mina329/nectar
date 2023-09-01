import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/assets_manager.dart';
import 'package:nectar/core/utils/strings_manager.dart';

import '../../../../../core/widgets/custom_elevated_btn.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 3.5, sigmaY: 3.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SvgPicture.asset(
            AssetsManager.carrotImgDARK,
            width: 48.w,
            height: 56.h,
          ),
          SizedBox(
            height: 35.h,
          ),
          Text(
            StringsManager.onBoardingTitle.tr(),
            style: Theme.of(context).textTheme.displayLarge,
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            StringsManager.onBoardingDescription.tr(),
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          SizedBox(
            height: 30.h,
          ),
          Center(
            child: SizedBox(
              width: 370.w,
              height: 70.h,
              child: CustomElevatedBtn(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kHomeView);
                },
                txt: StringsManager.getStarted.tr(),
                style: Theme.of(context).textTheme.labelLarge!,
              ),
            ),
          ),
          SizedBox(
            height: 90.h,
          )
        ],
      ),
    );
  }
}
