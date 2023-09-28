import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../../explore/data/models/category_model/category_model.dart';

class CategoryGroceriesSectionItem extends StatelessWidget {
  const CategoryGroceriesSectionItem(
      {super.key,
      required this.color,
      required this.name,
      required this.imageLink, required this.category});
  final Color color;
  final String name;
  final String imageLink;
  final CategoryModel category;
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
        width: 250.w,
        height: 105.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: color.withOpacity(0.15)),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 17.w),
              child: SizedBox(
                width: 70.w,
                child: Image.network(imageLink, width: 100.w,
                    errorBuilder: (context, error, stackTrace) {
                  try {
                    throw error;
                  } catch (e) {}
                  return const Icon(
                    Icons.error,
                    color: Colors.red,
                  );
                }, loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  } else {
                    return const CustomCircularIndicator();
                  }
                }),
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            SizedBox(
              width: 120.w,
              child: Text(
                name,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            )
          ],
        ),
      ),
    );
  }
}
