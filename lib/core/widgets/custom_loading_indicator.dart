import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../utils/assets_manager.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      child: Lottie.asset(
        AssetsManager.loading,
        width: 50.w,
        height: 100.h,
      ),
    );
  }
}

class CustomCircularIndicator extends StatelessWidget {
  const CustomCircularIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      AssetsManager.loading,
      width: 50.w,
      height: 100.h,
    );
  }
}
