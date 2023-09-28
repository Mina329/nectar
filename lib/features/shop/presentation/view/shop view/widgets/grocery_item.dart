import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/widgets/custom_loading_indicator.dart';

import '../../../../../../core/utils/assets_manager.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/widgets/custom_add_action_btn.dart';

class GroceryItem extends StatelessWidget {
  const GroceryItem({
    super.key,
    required this.name,
    required this.quantity,
    required this.price,
    required this.offerPrice,
    required this.imageLink,
  });
  final String? name;
  final String? quantity;
  final String? price;
  final double? offerPrice;
  final String? imageLink;
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
              height: 5.h,
            ),
            SizedBox(
              width: 140.w,
              height: 135.h,
              child: Image.network(imageLink ?? "", width: 140.w, height: 135.h,
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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15.w,
              ),
              child: Text(
                '${name!}\n',
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
                quantity ?? "",
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
                  SizedBox(
                    width: 90.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (offerPrice != null)
                          Text(
                            "$offerPrice L.E.",
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                  fontFamily: AssetsManager.gilroySemiBold,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.sp,
                                ),
                          ),
                        Text(
                          "$price L.E.",
                          overflow: TextOverflow.ellipsis,
                          style: offerPrice == null
                              ? Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                    fontFamily: AssetsManager.gilroySemiBold,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18.sp,
                                  )
                              : Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                    fontFamily: AssetsManager.gilroySemiBold,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11.sp,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40.w,
                    height: 40.h,
                    child: const CustomAddActionButton(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
