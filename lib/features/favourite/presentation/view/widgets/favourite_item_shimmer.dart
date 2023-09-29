import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class FavouriteItemShimmer extends StatelessWidget {
  const FavouriteItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[400]!,
      highlightColor: Colors.grey[200]!,
      child: SizedBox(
        width: 364.w,
        height: 140.h,
        child: Column(children: [
          SizedBox(
            height: 30.h,
          ),
          SizedBox(
            height: 70.h,
            width: 364.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 65.h,
                  width: 90.w,
                  child: const CircleAvatar(),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 100.w,
                            height: 20.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Container(
                            width: 60.w,
                            height: 10.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.black),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40.w,
                            height: 20.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.black),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          const Divider(),
        ]),
      ),
    );
  }
}
