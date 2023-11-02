import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/assets_manager.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/features/home/presentation/view_model/navigation_bar_cubit/navigation_bar_cubit.dart';

import '../../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../data/models/category_model/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category, required this.color});
  final CategoryModel category;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: InkWell(
        onTap: () {
          GoRouter.of(context).push(
            AppRouter.kCategoryDetailsView,
            extra: (category, BlocProvider.of<NavigationBarCubit>(context)),
          );
        },
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
                  : CachedNetworkImage(
                      imageUrl: category.image!,
                      width: 111.w,
                      height: 74.h,
                      errorWidget: (context, url, error) {
                        return Image.asset(
                          AssetsManager.errorAlt,
                          width: 111.w,
                          height: 74.h,
                        );
                      },
                      placeholder: (context, url) =>
                          const CustomCircularIndicator(),
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
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
