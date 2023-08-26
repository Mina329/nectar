import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nectar/core/utils/assets_manager.dart';
import 'package:nectar/features/onboarding/presentation/view/widgets/onboarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AssetsManager.onBoarding),
                fit: BoxFit.cover,
              ),
            ),
            child: const OnBoardingViewBody()),
      ),
    );
  }
}
