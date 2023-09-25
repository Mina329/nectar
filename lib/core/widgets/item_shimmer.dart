import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemShimmer extends StatelessWidget {
  const ItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 255.h,
      width: 173.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 2.w),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: SizedBox(
              width: 111.w,
              height: 111.h,
              child: const CircleAvatar(),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15.w,
              ),
              child: Container(
                height: 15.h,
                width: 120.w,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
              )),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            width: 80.w,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15.w,
              ),
              child: Container(
                height: 15.h,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 70.w,
                  child: Container(
                    height: 15.h,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                SizedBox(
                  width: 45.w,
                  height: 45.h,
                  child: Container(
                    width: 56.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
