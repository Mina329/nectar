import 'package:flutter/material.dart';
import 'package:nectar/features/splash/presentaion/view/widgets/splash_view_body.dart';

import '../../../../core/utils/color_manager.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: ColorManager.green,
        body: SplashViewBody());
  }
}
