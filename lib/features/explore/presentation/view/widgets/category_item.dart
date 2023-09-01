import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_router.dart';

import '../../../../../core/utils/color_manager.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kCategoryDetailsView);
      },
      child: Container(
        width: 175.w,
        height: 200.h,
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorManager.green.withOpacity(0.7),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          color: ColorManager.green.withOpacity(0.1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 27.h,
            ),
            Image.asset(
              "assets/images/category.png",
              width: 111.w,
              height: 74.h,
            ),
            SizedBox(
              height: 27.h,
            ),
            SizedBox(
              width: 90.w,
              child: Text(
                "Frash Fruits & Vegetable",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
