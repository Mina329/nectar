import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets_manager.dart';

class TomatoAnimatedBuilder extends StatelessWidget {
  const TomatoAnimatedBuilder({
    super.key,
    required this.componentController,
    required this.tomatoAnimation,
  });

  final AnimationController componentController;
  final Animation<RelativeRect> tomatoAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: componentController,
      builder: (context, child) => PositionedDirectional(
        bottom: tomatoAnimation.value.bottom,
        start: tomatoAnimation.value.left,
        child: Image.asset(
          AssetsManager.splashTomato,
          width: 50.w,
          height: 50.h,
        ),
      ),
    );
  }
}

class CarrotAnimatedBuilder extends StatelessWidget {
  const CarrotAnimatedBuilder({
    super.key,
    required this.componentController,
    required this.carrotAnimation,
  });

  final AnimationController componentController;
  final Animation<RelativeRect> carrotAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: componentController,
      builder: (context, child) => PositionedDirectional(
        top: carrotAnimation.value.top,
        end: carrotAnimation.value.right,
        child: Image.asset(
          AssetsManager.splashCarrot,
          width: 100.w,
          height: 100.h,
        ),
      ),
    );
  }
}

class PepperAnimatedBuilder extends StatelessWidget {
  const PepperAnimatedBuilder({
    super.key,
    required this.componentController,
    required this.pepperAnimation,
  });

  final AnimationController componentController;
  final Animation<RelativeRect> pepperAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: componentController,
      builder: (context, child) => PositionedDirectional(
        top: pepperAnimation.value.top,
        end: pepperAnimation.value.right,
        child: Image.asset(
          AssetsManager.splashPepper,
          width: 50.w,
          height: 50.h,
        ),
      ),
    );
  }
}

class BeanAnimatedBuilder extends StatelessWidget {
  const BeanAnimatedBuilder({
    super.key,
    required this.componentController,
    required this.beanAnimation,
  });

  final AnimationController componentController;
  final Animation<RelativeRect> beanAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: componentController,
      builder: (context, child) => PositionedDirectional(
        bottom: beanAnimation.value.bottom,
        start: beanAnimation.value.left,
        child: Image.asset(
          AssetsManager.splashBean,
          width: 150.w,
          height: 150.h,
        ),
      ),
    );
  }
}
