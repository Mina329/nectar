import 'package:country_flags/country_flags.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/color_manager.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/features/auth/presentation/view/widgets/auth_app_bar.dart';

class PhoneAuthViewBody extends StatelessWidget {
  const PhoneAuthViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: buildForwardButton(context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: CustomScrollView(
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
                StringsManager.enterMobile.tr(),
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
                StringsManager.mobileNumber.tr(),
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
            SliverToBoxAdapter(
              child: Row(
                children: [
                  CountryFlag.fromCountryCode(
                    'EG',
                    height: 20.h,
                    width: 25.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "+20",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: 16.sp),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  SizedBox(
                    width: 250.w,
                    height: 50.h,
                    child: TextField(
                      cursorColor: ColorManager.green,
                      decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: ColorManager.green),
                        ),
                      ),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  FloatingActionButton buildForwardButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        GoRouter.of(context).push(AppRouter.kPhoneVerifyView);
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
