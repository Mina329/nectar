import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/utils/strings_manager.dart';

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
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: Text(
            StringsManager.splashDescription.tr(),
            style: Theme.of(context).textTheme.displaySmall,
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
