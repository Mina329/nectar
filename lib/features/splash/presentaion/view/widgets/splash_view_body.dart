import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/assets_manager.dart';
import 'package:nectar/features/splash/presentaion/view/widgets/splash_sliding_text.dart';

import '../../../../../core/utils/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    _initSlidingAnimation();
    _navigateToOnBoarding();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _preloadImage(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(AssetsManager.splashImg),
        const SizedBox(
          width: 18,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(AssetsManager.nectarImg),
            const SizedBox(
              height: 5,
            ),
            SplashSlidingText(slidingAnimation: slidingAnimation),
          ],
        ),
      ],
    );
  }

  void _navigateToOnBoarding() async {
    await Future.delayed(
      const Duration(milliseconds: 2500),
      () => GoRouter.of(context).push(AppRouter.kOnBoardingView),
    );
  }

  Future<void> _preloadImage(BuildContext context) async {
    const ImageProvider imageProvider = AssetImage(AssetsManager.onBoarding);
    await precacheImage(imageProvider, context);
  }

  void _initSlidingAnimation() async {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    await animationController.forward();
  }
}
