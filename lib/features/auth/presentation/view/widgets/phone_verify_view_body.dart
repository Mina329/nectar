import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/features/auth/presentation/view/widgets/auth_app_bar.dart';
import 'package:nectar/features/auth/presentation/view/widgets/otp_form.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/strings_manager.dart';

class PhoneVerifyViewBody extends StatelessWidget {
  const PhoneVerifyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: buildForwardButton(context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Stack(
          children: [
            CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                const AuthAppBar(),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 50.h,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Text(
                    StringsManager.enterVerify.tr(),
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 30.h,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Text(
                    StringsManager.code.tr(),
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: 16.sp),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 10.h,
                  ),
                ),
                const SliverToBoxAdapter(
                  child: OTPInput(),
                )
              ],
            ),
            Positioned(
                bottom: 25.h,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    StringsManager.resendCode.tr(),
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: ColorManager.green,
                          fontSize: 18.sp,
                        ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  FloatingActionButton buildForwardButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        GoRouter.of(context).push(AppRouter.kLocationSelectView);
      },
      backgroundColor: ColorManager.green,
      child: const Center(
        child: Icon(
          Icons.arrow_forward_ios_rounded,
          color: ColorManager.whiteText,
        ),
      ),
    );
  }
}
