import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryShimmer extends StatelessWidget {
  const CategoryShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175.w,
      height: 200.h,
      decoration: BoxDecoration(
        border: Border.all(width: 3.w),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 27.h,
          ),
          SizedBox(
            width: 111.w,
            height: 74.h,
            child: const CircleAvatar(),
          ),
          SizedBox(
            height: 27.h,
          ),
          SizedBox(
            width: 111.w,
            height: 20.h,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ],
      ),
    );
  }
}
