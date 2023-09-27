import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerItem extends StatelessWidget {
  const BannerItem({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(
          15,
        ),
      ),
      child: SizedBox(
        height: 115.h,
        width: 368.w,
        child: Image.asset(
          "assets/images/banner$index.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
