import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/core/utils/assets_manager.dart';
import 'package:nectar/features/auth/presentation/view/widgets/auth_app_bar.dart';
import 'email_login.dart';
import 'email_signup.dart';

class EmailAuthViewBody extends StatefulWidget {
  const EmailAuthViewBody({super.key});

  @override
  State<EmailAuthViewBody> createState() => _EmailAuthViewBodyState();
}

class _EmailAuthViewBodyState extends State<EmailAuthViewBody> {
  final formKey = GlobalKey<FormState>();
  bool isLogIn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const AuthAppBar(),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 25.h,
              ),
            ),
            SliverToBoxAdapter(
              child: SvgPicture.asset(
                Theme.of(context).brightness == Brightness.light
                    ? AssetsManager.carrotImgLIGHT
                    : AssetsManager.carrotImgDARK,
                height: 50.h,
                width: 50.w,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 60.h,
              ),
            ),
            if (isLogIn)
              EmailLogIn(
                formKey: formKey,
                signup: () {
                  setState(() {
                    isLogIn = false;
                  });
                  formKey.currentState?.reset();
                },
              )
            else
              EmailSignUp(
                formKey: formKey,
                login: () {
                  setState(() {
                    isLogIn = true;
                  });
                  formKey.currentState?.reset();
                },
              ),
          ],
        ),
      ),
    );
  }
}
