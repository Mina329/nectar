
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/widgets/custom_elevated_btn.dart';

class OrderShimmer extends StatelessWidget {
  const OrderShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[400]!,
      highlightColor: Colors.grey[200]!,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          height: 200.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all()
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 20.h,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 200.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                  ),
                ),
                Container(
                  width: 150.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 50.h,
                  width: double.infinity,
                  child: Center(
                    child: SizedBox(
                      width: 200.w,
                      child: CustomElevatedBtn(
                        onPressed: () {},
                        txt: ' ',
                        style: Theme.of(context).textTheme.labelLarge!,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
