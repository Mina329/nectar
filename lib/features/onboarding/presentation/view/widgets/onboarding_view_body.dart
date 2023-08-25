import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/core/utils/assets_manager.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/core/utils/styles_manager.dart';

import '../../../../../core/widgets/custom_elevated_btn.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
          StringsManager.onBoardingDescription,
          style: StylesManager.largeHeadingTextStyle,
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.07,
        ),
        Center(
          child: SizedBox(
            width: 350,
            height: 70,
            child: CustomElevatedBtn(
              onPressed: () {},
              txt: StringsManager.getStarted,
              style: StylesManager.gilroySemiBold18,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        )
      ],
    );
  }
}
