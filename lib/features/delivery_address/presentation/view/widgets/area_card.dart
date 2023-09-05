import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/cache/cache_helper.dart';
import '../../../../../core/cache/cache_keys_values.dart';
import '../../../../../core/utils/color_manager.dart';

class AreaCard extends StatelessWidget {
  const AreaCard({super.key, required this.placeName});
  final String placeName;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: CacheData.getData(key: CacheKeys.kDARKMODE) ==
                        CacheValues.DARK
                    ? ColorManager.borderColorDARK
                    : ColorManager.borderColorLIGHT,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 10.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Area",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      SizedBox(
                        width: 250.w,
                        child: Text(
                          placeName,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      )
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Change",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: ColorManager.green),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}