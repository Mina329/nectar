import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/color_manager.dart';

class CustomRoundedSquareWidget extends StatelessWidget {
  const CustomRoundedSquareWidget({
    super.key,
    required this.child,
    required this.onTap,
  });
  final Widget child;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.w,
      height: 45.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).brightness == Brightness.light
              ? ColorManager.borderColorLIGHT
              : ColorManager.borderColorDARK,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: InkWell(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        onTap: onTap,
        child: child,
      ),
    );
  }
}
