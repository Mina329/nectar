import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/env.dart';

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
              child: Image.network(
                "${Env.BACKEND_BASE_URL}${category.image}",
                width: 111.w,
                height: 74.h,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.error,
                    color: Colors.red,
                  );
                },
                loadingBuilder: (context, child, loadingProgress) =>
                    const CustomCircularIndicator(),
              ),
            ),
            SizedBox(
              height: 27.h,
            ),
            SizedBox(
              width: 111.w,
              child: Text(
                category.name!,
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
