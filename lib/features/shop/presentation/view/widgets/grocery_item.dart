import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/widgets/custom_loading_indicator.dart';

import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_add_action_btn.dart';

class GroceryItem extends StatelessWidget {
  const GroceryItem({
    super.key,
    required this.name,
    required this.quantity,
    required this.price,
    this.offerPrice,
    required this.imageLink,
  });
  final String name;
  final String quantity;
  final String price;
  final String? offerPrice;
  final String imageLink;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.kItemDetailsView,
        );
      },
      child: Container(
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
              height: 135.h,
              child: CachedNetworkImage(
                  imageUrl: imageLink,
                  width: 140.w,
                  height: 135.h,
                  errorWidget: (context, url, error) {
                    try {
                      throw error;
                    } catch (e) {}
                    return const Icon(
                      Icons.error,
                      color: Colors.red,
                    );
                  },
                  placeholder: (context, url) =>
                      const CustomCircularIndicator()),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15.w,
              ),
              child: Text(
                name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
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
                quantity,
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
                  Text("$price L.E.",
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
      ),
    );
  }
}
