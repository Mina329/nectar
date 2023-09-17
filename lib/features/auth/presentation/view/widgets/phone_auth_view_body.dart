import 'package:country_flags/country_flags.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/color_manager.dart';
import 'package:nectar/core/utils/strings_manager.dart';

class PhoneAuthViewBody extends StatefulWidget {
  const PhoneAuthViewBody({super.key});

  @override
  State<PhoneAuthViewBody> createState() => _PhoneAuthViewBodyState();
}

class _PhoneAuthViewBodyState extends State<PhoneAuthViewBody> {
  final controller = TextEditingController();

  bool validate = true;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        floatingActionButton: buildForwardButton(context),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 150.h,
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
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                        controller: controller,
                        cursorColor: ColorManager.green,
                        keyboardType: TextInputType.number,
                        maxLength: 10,
                        decoration: InputDecoration(
                          counterText: "",
                          errorText: validate ? null : "Invalid data",
                          focusedBorder: const OutlineInputBorder(
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
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  FloatingActionButton buildForwardButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        if (controller.text.length != 10) {
          setState(() {
            validate = false;
          });
        } else {
          GoRouter.of(context).push(AppRouter.kPhoneVerifyView);
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
