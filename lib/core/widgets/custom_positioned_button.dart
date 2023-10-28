import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_elevated_btn.dart';

class CustomPositionedButton extends StatelessWidget {
  const CustomPositionedButton(
      {super.key, required this.onPressed, required this.txt});
  final VoidCallback onPressed;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 25.h,
      left: 25.w,
      right: 25.w,
      child: SizedBox(
        width: 364.w,
        height: 67.h,
        child: CustomElevatedBtn(
          onPressed: onPressed,
          txt: txt,
          style: Theme.of(context).textTheme.labelLarge!,
        ),
      ),
    );
  }
}
