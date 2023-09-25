import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_router.dart';

import '../../../../../../core/utils/api_service.dart';
import '../../../../data/models/category_model/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category, required this.color});
  final CategoryModel category;
  final Color color;
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
            CachedNetworkImage(
                imageUrl: "${ApiService.baseUrl}${category.image}",
                width: 111.w,
                height: 74.h,
                errorWidget: (context, url, error) => const Icon(
                      Icons.error,
                      color: Colors.red,
                    )),
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
