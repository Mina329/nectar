import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/cache/cache_helper.dart';
import 'package:nectar/core/cache/cache_keys_values.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/features/auth/presentation/view%20model/phone_auth_cubit/phone_auth_cubit.dart';
import 'package:nectar/features/auth/presentation/view/phone%20auth%20view/widgets/auth_app_bar.dart';
import 'package:nectar/features/auth/presentation/view/phone%20verify%20view/widgets/otp_form.dart';
import 'package:nectar/main.dart';

import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/strings_manager.dart';

class PhoneVerifyViewBody extends StatefulWidget {
  const PhoneVerifyViewBody({super.key});

  @override
  State<PhoneVerifyViewBody> createState() => _PhoneVerifyViewBodyState();
}

class _PhoneVerifyViewBodyState extends State<PhoneVerifyViewBody> {
  bool isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  onPressed: isEnabled
                      ? () {
                          Fluttertoast.showToast(msg: "resending code...");
                          setState(() {
                            isEnabled = false;
                          });
                          BlocProvider.of<PhoneAuthCubit>(context).resend();
                        }
                      : null,
                  child: Text(
                    StringsManager.resendCode.tr(),
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: isEnabled
                              ? ColorManager.green
                              : ColorManager.greySmall,
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
      onPressed: () async {
        await CacheData.setData(key: CacheKeys.kSIGNED, value: testToken);
        if (context.mounted) {
          GoRouter.of(context).go(AppRouter.kHomeView, extra: 0);
        }
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
