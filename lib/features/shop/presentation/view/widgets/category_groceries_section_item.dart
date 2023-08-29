import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/strings_manager.dart';

class CategoryGroceriesSectionItem extends StatelessWidget {
  const CategoryGroceriesSectionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.w,
      height: 105.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: ColorManager.categoryOne.withOpacity(0.15)),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 17.w),
            child: Image.asset("assets/images/category_one.png"),
          ),
          SizedBox(
            width: 15.w,
          ),
          Text(
            StringsManager.pulses,
            style: Theme.of(context).textTheme.titleMedium,
          )
        ],
      ),
    );
  }
}
