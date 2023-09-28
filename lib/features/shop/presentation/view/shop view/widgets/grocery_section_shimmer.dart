import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../core/l10n/locales.dart';
import '../../../../../../core/widgets/item_shimmer.dart';

class GrocerySectionShimmer extends StatelessWidget {
  const GrocerySectionShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Shimmer.fromColors(
        baseColor: Colors.grey[400]!,
        highlightColor: Colors.grey[200]!,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 25.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                ),
                Container(
                  height: 15.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 105.h,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: context.locale == ENGLISH_LOCALE
                      ? EdgeInsets.only(right: 15.w)
                      : EdgeInsets.only(left: 15.w),
                  child: Container(
                    width: 250.w,
                    height: 105.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        width: 2.w,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 17.w),
                          child: SizedBox(
                            width: 70.w,
                            height: 70.h,
                            child: const CircleAvatar(),
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Container(
                          height: 25.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 255.h,
              child: ListView.builder(
                itemCount: 10,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: context.locale == ENGLISH_LOCALE
                      ? EdgeInsets.only(right: 15.w)
                      : EdgeInsets.only(left: 15.w),
                  child: const ItemShimmer(),
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
          ],
        ),
      ),
    );
  }
}
