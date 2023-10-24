import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/assets_manager.dart';
import 'package:nectar/core/utils/color_manager.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/core/utils/styles_manager.dart';
import 'package:nectar/core/widgets/custom_toast_widget.dart';
import 'package:nectar/features/auth/presentation/view%20model/google_auth_cubit/google_auth_cubit.dart';

import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/widgets/custom_loading_indicator.dart';
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
                  BlocListener<GoogleAuthCubit, GoogleAuthState>(
                    listener: (context, state) {
                      if (state is GoogleLogInAuthLoading) {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return const CustomLoadingIndicator();
                          },
                        );
                      } else if (state is GoogleLogInAuthFailure) {
                        GoRouter.of(context).pop();
                        CustomToastWidget.buildCustomToast(context,
                            state.errMessage, ToastType.failure, 200.h);
                      } else if (state is GoogleLogInAuthSuccess) {
                        //log(state.account.serverAuthCode);
                        GoRouter.of(context).pop();
                        GoRouter.of(context).push(AppRouter.kPhoneAuthView);
                      }
                    },
                    child: LoginButton(
                      color: ColorManager.googleButton,
                      icon: FontAwesomeIcons.google,
                      txt: StringsManager.googleLogin.tr(),
                      onPressed: () {
                        BlocProvider.of<GoogleAuthCubit>(context).logIn();
                      },
                    ),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
