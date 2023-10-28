import 'dart:developer';

import 'package:country_flags/country_flags.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/color_manager.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/core/widgets/custom_loading_indicator.dart';
import 'package:nectar/features/auth/presentation/view%20model/phone_auth_cubit/phone_auth_cubit.dart';

import '../../../../../../core/utils/app_router.dart';
import 'auth_app_bar.dart';

class PhoneAuthViewBody extends StatefulWidget {
  const PhoneAuthViewBody({super.key});

  @override
  State<PhoneAuthViewBody> createState() => _PhoneAuthViewBodyState();
}

class _PhoneAuthViewBodyState extends State<PhoneAuthViewBody> {
  late TextEditingController controller;
  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

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
                          errorText:
                              validate ? null : StringsManager.invalidData.tr(),
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

  Widget buildForwardButton(BuildContext context) {
    return BlocListener<PhoneAuthCubit, PhoneAuthState>(
      listener: (context, state) {
        if (state is SendOTPSuccess) {
          GoRouter.of(context).pop();
          GoRouter.of(context).push(
            AppRouter.kPhoneVerifyView,
            extra: BlocProvider.of<PhoneAuthCubit>(context),
          );
        } else if (state is SendOTPFailure) {
          GoRouter.of(context).pop();
          log(state.errMessage);
          Fluttertoast.showToast(msg: state.errMessage);
        } else if (state is SendOTPLoading) {
          CustomLoadingIndicator.buildLoadingIndicator(context);
        }
      },
      child: FloatingActionButton(
        onPressed: () async {
          if (controller.text.length != 10) {
            setState(() {
              validate = false;
            });
          } else {
            await CustomPhoneConfirmationDialog.buildConfirmationDialog(
              context,
              () {
                BlocProvider.of<PhoneAuthCubit>(context).sendOTP(
                  '+20${controller.text}',
                );
              },
              '+20${controller.text}',
            );
          }
        },
        backgroundColor: ColorManager.green,
        child: const Center(
          child: Icon(
            Icons.arrow_forward_ios_rounded,
            color: ColorManager.whiteText,
          ),
        ),
      ),
    );
  }
}
