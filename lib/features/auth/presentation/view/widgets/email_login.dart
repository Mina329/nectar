import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/strings_manager.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_elevated_btn.dart';

class EmailLogIn extends StatefulWidget {
  const EmailLogIn({super.key, required this.formKey, required this.signup});
  final GlobalKey<FormState> formKey;
  final VoidCallback signup;

  @override
  State<EmailLogIn> createState() => _EmailLogInState();
}

class _EmailLogInState extends State<EmailLogIn> {
  bool obscureText = true;
  String _enteredEmail = '';
  String _enteredPassword = '';

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringsManager.login.tr(),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(
            height: 50.h,
          ),
          Form(
            key: widget.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(
                    StringsManager.email.tr(),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                TextFormField(
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontSize: 14.sp),
                  decoration: InputDecoration(
                    hintText: StringsManager.email.tr(),
                    filled: true,
                    fillColor: Theme.of(context).hoverColor,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !value.contains('@')) {
                      return StringsManager.emailValidation.tr();
                    }
                    return null;
                  },
                  onSaved: (value){
                    _enteredEmail = value!;
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(
                    StringsManager.password.tr(),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                TextFormField(
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontSize: 14.sp),
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      child: obscureText
                          ? Icon(
                              FontAwesomeIcons.eyeSlash,
                              size: 22.sp,
                              color: ColorManager.green,
                            )
                          : Icon(
                              FontAwesomeIcons.eye,
                              size: 22.sp,
                              color: ColorManager.green,
                            ),
                    ),
                    hintText: StringsManager.password.tr(),
                    filled: true,
                    fillColor: Theme.of(context).hoverColor,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        value.trim().length < 6) {
                      return StringsManager.passwordValidation.tr();
                    }
                    return null;
                  },
                  onSaved: (value){
                    _enteredPassword = value!;
                  },
                ),
                SizedBox(
                  height: 40.h,
                ),
                Center(
                  child: SizedBox(
                    width: 370.w,
                    height: 70.h,
                    child: CustomElevatedBtn(
                      onPressed: () {
                        if (widget.formKey.currentState!.validate()) {
                          GoRouter.of(context).push(AppRouter.kPhoneAuthView);
                        }
                      },
                      txt: StringsManager.login.tr(),
                      style: Theme.of(context).textTheme.labelLarge!,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      StringsManager.notRegistered.tr(),
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(fontSize: 14.sp),
                    ),
                    TextButton(
                      onPressed: widget.signup,
                      child: Text(
                        StringsManager.signup.tr(),
                        style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(
                                  fontSize: 14.sp,
                                  color: ColorManager.green,
                                ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
