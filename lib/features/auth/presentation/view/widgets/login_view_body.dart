import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/assets_manager.dart';
import 'package:nectar/core/utils/color_manager.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/core/utils/styles_manager.dart';

import '../../../../../core/utils/app_router.dart';
import 'login_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.loginBackground,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              width: 414.w,
              child: Image.asset(
                AssetsManager.loginImg,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SvgPicture.asset(
                      AssetsManager.carrotImgLIGHT,
                      width: 50.w,
                      height: 50.h,
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    StringsManager.loginDescription.tr(),
                    style: StylesManager.headingMediumLIGHT,
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
                  LoginButton(
                    color: ColorManager.googleButton,
                    icon: FontAwesomeIcons.google,
                    txt: StringsManager.googleLogin.tr(),
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.kPhoneAuthView);
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  LoginButton(
                    color: ColorManager.facebookButton,
                    icon: FontAwesomeIcons.facebook,
                    txt: StringsManager.facebookLogin.tr(),
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.kPhoneAuthView);
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  LoginButton(
                    color: ColorManager.green,
                    icon: Icons.email,
                    txt: StringsManager.emailLogin.tr(),
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.kEmailAuthView);
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
