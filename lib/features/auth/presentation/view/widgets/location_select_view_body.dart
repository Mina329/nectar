import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/l10n/locales.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/assets_manager.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/core/widgets/custom_positioned_button.dart';
import 'package:nectar/features/auth/presentation/view/widgets/auth_app_bar.dart';
import 'package:nectar/features/auth/presentation/view/widgets/governorate_drop_down.dart';

class LocationSelectViewBody extends StatelessWidget {
  const LocationSelectViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                const AuthAppBar(),
                SliverToBoxAdapter(
                  child: SizedBox(height: 30.h),
                ),
                SliverToBoxAdapter(
                  child: SvgPicture.asset(
                    AssetsManager.loginLocationImg,
                    height: 170.h,
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(height: 30.h),
                ),
                SliverToBoxAdapter(
                  child: Center(
                    child: Text(
                      StringsManager.selectYourLocation.tr(),
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(height: 10.h),
                ),
                SliverToBoxAdapter(
                  child: Center(
                    child: Text(
                      StringsManager.locationDescription.tr(),
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 16.sp),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(height: 50.h),
                ),
                SliverToBoxAdapter(
                  child: Text(
                    StringsManager.yourGovernorate.tr(),
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: 16.sp),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(height: 10.h),
                ),
                SliverToBoxAdapter(
                  child: GovernoratesDropdown(
                    isEnglish: context.locale == ENGLISH_LOCALE,
                  ),
                )
              ],
            ),
          ),
          CustomPositionedButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kHomeView);
            },
            txt: StringsManager.confirm.tr(),
          )
        ],
      ),
    );
  }
}
