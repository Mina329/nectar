import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/features/auth/presentation/view%20model/auth_cubit/auth_email_cubit.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/strings_manager.dart';
import '../../../../../core/widgets/custom_elevated_btn.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';

class EmailSignUp extends StatefulWidget {
  const EmailSignUp({super.key, required this.formKey, required this.login});
  final GlobalKey<FormState> formKey;
  final VoidCallback login;

  @override
  State<EmailSignUp> createState() => _EmailSignUpState();
}

class _EmailSignUpState extends State<EmailSignUp> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringsManager.signup.tr(),
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
                    StringsManager.firstName.tr(),
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
                    hintText: StringsManager.firstName.tr(),
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
                    if (value == null || value.isEmpty) {
                      return StringsManager.firstNameValidation.tr();
                    }
                    return null;
                  },
                  onSaved: (value) {
                    BlocProvider.of<AuthEmailCubit>(context).signUpFirstName =
                        value!;
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(
                    StringsManager.lastName.tr(),
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
                    hintText: StringsManager.lastName.tr(),
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
                    if (value == null || value.isEmpty) {
                      return StringsManager.lastNameValidation.tr();
                    }
                    return null;
                  },
                  onSaved: (value) {
                    BlocProvider.of<AuthEmailCubit>(context).signUpLastName =
                        value!;
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
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
                  onSaved: (value) {
                    BlocProvider.of<AuthEmailCubit>(context).signUpEmail =
                        value!;
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
                  onSaved: (value) {
                    BlocProvider.of<AuthEmailCubit>(context).signUpPassword =
                        value!;
                  },
                ),
                SizedBox(
                  height: 40.h,
                ),
                Center(
                  child: SizedBox(
                    width: 370.w,
                    height: 70.h,
                    child: BlocListener<AuthEmailCubit, AuthEmailState>(
                      listener: (context, state) {
                        if (state is SignUpLoading) {
                          showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext context) {
                              return const CustomLoadingIndicator();
                            },
                          );
                        } else if (state is SignUpSuccess) {
                          print(state.userCredential);
                          GoRouter.of(context).pop();
                          GoRouter.of(context).push(AppRouter.kPhoneAuthView);
                        } else if (state is SignUpFailure) {
                          GoRouter.of(context).pop();
                          Fluttertoast.showToast(msg: state.errorMessage);
                        }
                      },
                      child: CustomElevatedBtn(
                        onPressed: () {
                          if (!widget.formKey.currentState!.validate()) {
                            return;
                          }
                          widget.formKey.currentState!.save();
                          BlocProvider.of<AuthEmailCubit>(context).signUp();
                        },
                        txt: StringsManager.signup.tr(),
                        style: Theme.of(context).textTheme.labelLarge!,
                      ),
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
                      StringsManager.registered.tr(),
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(fontSize: 14.sp),
                    ),
                    TextButton(
                      onPressed: widget.login,
                      child: Text(
                        StringsManager.login.tr(),
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
