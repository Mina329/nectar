import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/assets_manager.dart';
import 'package:nectar/features/splash/presentaion/view/widgets/splash_app_name_animation.dart';
import 'package:nectar/features/splash/presentaion/view/widgets/splash_circles_animation.dart';
import 'package:nectar/features/splash/presentaion/view/widgets/splash_vegetables_animation.dart';
import '../../../../../core/utils/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController logoAnimationController;
  late AnimationController circlesAnimationController;
  late AnimationController componentController;

  late Animation<double> logoAnimation;
  late Animation<double> upperCircleAnimation;
  late Animation<double> lowerCircleAnimation;
  late Animation<RelativeRect> carrotAnimation;
  late Animation<RelativeRect> pepperAnimation;
  late Animation<RelativeRect> beanAnimation;
  late Animation<RelativeRect> tomatoAnimation;

  @override
  void initState() {
    super.initState();
    _initlogoAnimation();
    _initCircleAnimation();
    _initComponentAnimation();
    _navigateToOnBoarding();
  }

  @override
  void dispose() {
    componentController.dispose();
    circlesAnimationController.dispose();
    logoAnimationController.dispose();
    super.dispose();
  }

  void _initlogoAnimation() async {
    logoAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    logoAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(logoAnimationController);
    logoAnimationController.forward();
  }

  void _initCircleAnimation() {
    circlesAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    upperCircleAnimation = Tween<double>(begin: 0.w, end: 120.w).animate(
        CurvedAnimation(
            parent: circlesAnimationController, curve: Curves.easeOutCirc));
    lowerCircleAnimation = Tween<double>(begin: 0.w, end: 200.w).animate(
        CurvedAnimation(
            parent: circlesAnimationController, curve: Curves.easeOutCirc));
    Future.delayed(const Duration(milliseconds: 1000), () {
      circlesAnimationController.forward();
    });
  }

  Future<void> _preloadImage(BuildContext context) async {
    const ImageProvider imageProvider = AssetImage(AssetsManager.onBoarding);
    await precacheImage(imageProvider, context);
  }

  @override
  Widget build(BuildContext context) {
    _preloadImage(context);

    return Scaffold(
      body: Stack(
        children: [
          AppNameAnimation(logoAnimation: logoAnimation),
          UpperCircleAnimation(circlesAnimationController: circlesAnimationController, upperCircleAnimation: upperCircleAnimation),
          LowerCircleAnimation(circlesAnimationController: circlesAnimationController, lowerCircleAnimation: lowerCircleAnimation),
          CarrotAnimatedBuilder(componentController: componentController, carrotAnimation: carrotAnimation),
          PepperAnimatedBuilder(componentController: componentController, pepperAnimation: pepperAnimation),
          BeanAnimatedBuilder(componentController: componentController, beanAnimation: beanAnimation),
          TomatoAnimatedBuilder(componentController: componentController, tomatoAnimation: tomatoAnimation),
        ],
      ),
    );
  }

  void _navigateToOnBoarding() async {
    await Future.delayed(
      const Duration(milliseconds: 3500),
      () => GoRouter.of(context).push(AppRouter.kOnBoardingView),
    );
  }

  void _initComponentAnimation() {
    componentController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    carrotAnimation = RelativeRectTween(
      begin: RelativeRect.fromLTRB(0, -500.h, -500.w, 0),
      end: RelativeRect.fromLTRB(0, 100.h, 50.w, 0),
    ).animate(
      CurvedAnimation(
        parent: componentController,
        curve: Curves.easeOutCirc,
      ),
    );
    pepperAnimation = RelativeRectTween(
      begin: RelativeRect.fromLTRB(0, -500.h, 100.w, 0),
      end: RelativeRect.fromLTRB(0, 80.h, 150.w, 0),
    ).animate(
      CurvedAnimation(
        parent: componentController,
        curve: Curves.easeOutCirc,
      ),
    );
    beanAnimation = RelativeRectTween(
      begin: RelativeRect.fromLTRB(125.w, 0, 0, -500.h),
      end: RelativeRect.fromLTRB(125.w, 0, 0, 50.h),
    ).animate(
      CurvedAnimation(
        parent: componentController,
        curve: Curves.easeOutCirc,
      ),
    );
    tomatoAnimation = RelativeRectTween(
      begin: RelativeRect.fromLTRB(-500.w, 0, 0, 200.h),
      end: RelativeRect.fromLTRB(100.w, 0, 0, 200.h),
    ).animate(
      CurvedAnimation(
        parent: componentController,
        curve: Curves.easeOutCirc,
      ),
    );
    Future.delayed(const Duration(milliseconds: 2000), () {
      componentController.forward();
    });
  }
}




