import 'package:flutter/material.dart';
import 'package:nectar/core/utils/assets_manager.dart';
import 'package:nectar/features/onboarding/presentation/view/widgets/onboarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AssetsManager.onBoarding),
                fit: BoxFit.fill,
              ),
            ),
            child: const OnBoardingViewBody()),
      ),
    );
  }
}
