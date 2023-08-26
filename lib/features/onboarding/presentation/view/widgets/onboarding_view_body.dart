import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/assets_manager.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/core/utils/styles_manager.dart';

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
            AssetsManager.splashImg,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          Text(
            StringsManager.onBoardingTitle,
            style: StylesManager.largeHeadingTextStyle,
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Text(
            StringsManager.onBoardingDescription,
            style: StylesManager.gilroyMedium16.copyWith(
              color: const Color(0xffFCFCFC).withOpacity(0.7),
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Center(
            child: SizedBox(
              width: 350,
              height: 70,
              child: CustomElevatedBtn(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kHomeView);
                },
                txt: StringsManager.getStarted,
                style: StylesManager.gilroySemiBold18,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          )
        ],
      ),
    );
  }
}
