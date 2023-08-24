import 'package:flutter/material.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/core/utils/styles_manager.dart';

class SplashSlidingText extends StatelessWidget {
  const SplashSlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context,_) {
        return SlideTransition(
          position: slidingAnimation,
          child: Text(
            StringsManager.splashDescription,
            style: StylesManager.splashTextStyle,
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
