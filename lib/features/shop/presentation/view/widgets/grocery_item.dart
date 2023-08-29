import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_add_action_btn.dart';

class GroceryItem extends StatelessWidget {
  const GroceryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 255.h,
      width: 173.w,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.light
            ? ColorManager.whiteBackground
            : ColorManager.darkBluePrimary,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Theme.of(context).brightness == Brightness.light
              ? ColorManager.borderColorLIGHT
              : ColorManager.borderColorDARK,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: 140.w,
            height: 140.h,
            child: Image.asset("assets/images/banana.png"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
            ),
            child: Text(
              "Organic Bananas",
              style: Theme.of(context).textTheme.titleSmall,
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
            ),
            child: Text(
              "7pcs, Priceg",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontFamily: AssetsManager.gilroyMedium,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$4.99",
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          fontFamily: AssetsManager.gilroySemiBold,
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                        )),
                SizedBox(
                    width: 45.w,
                    height: 45.h,
                    child: const CustomAddActionButton())
              ],
            ),
          )
        ],
      ),
    );
  }
}
