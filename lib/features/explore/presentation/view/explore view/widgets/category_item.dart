import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/assets_manager.dart';
import 'package:nectar/core/utils/strings_manager.dart';

import '../../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../data/models/category_model/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category, required this.color});
  final CategoryModel category;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.kCategoryDetailsView,
          extra: category,
        );
      },
      child: Container(
        width: 175.w,
        height: 200.h,
        decoration: BoxDecoration(
          border: Border.all(
            color: color.withOpacity(0.7),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          color: color.withOpacity(0.1),
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
              child: category.image == null
                  ? Image.asset(
                      AssetsManager.errorAlt,
                      width: 111.w,
                      height: 74.h,
                    )
                  : Image.network(
                      category.image!,
                      width: 111.w,
                      height: 74.h,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          AssetsManager.errorAlt,
                          width: 111.w,
                          height: 74.h,
                        );
                      },
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        } else {
                          return const CustomCircularIndicator();
                        }
                      },
                    ),
            ),
            SizedBox(
              height: 27.h,
            ),
            SizedBox(
              width: 111.w,
              child: Text(
                category.name ?? StringsManager.unavailable,
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
