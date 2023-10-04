import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/widgets/custom_loading_indicator.dart';

import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/strings_manager.dart';

class FavouriteItem extends StatelessWidget {
  const FavouriteItem({
    super.key,
    required this.name,
    required this.image,
    required this.quantity,
    required this.price,
    required this.offerPrice,
  });
  final String? name;
  final String? image;
  final String? quantity;
  final double? price;
  final double? offerPrice;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 364.w,
      height: 140.h,
      child: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          SizedBox(
            height: 70.h,
            width: 364.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 65.h,
                  width: 90.w,
                  child: _buildImage(),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildTitleAndQuantity(context),
                      _buildPriceAndArrow(context)
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          const Divider(),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return image == null
        ? Image.asset(
            AssetsManager.errorAlt,
            height: 65.h,
            width: 90.w,
          )
        : CachedNetworkImage(
            imageUrl: image!,
            height: 65.h,
            width: 90.w,
            errorWidget: (context, url, error) => Image.asset(
              AssetsManager.errorAlt,
              height: 65.h,
              width: 90.w,
            ),
            progressIndicatorBuilder: (context, url, progress) =>
                const CustomCircularIndicator(),
          );
  }

  Column _buildTitleAndQuantity(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 160.w,
          child: Text(
            name ?? StringsManager.unavailable.tr(),
            style: Theme.of(context).textTheme.titleSmall,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
          ),
        ),
        SizedBox(
          height: 6.h,
        ),
        SizedBox(
          width: 160.w,
          child: Text(
            quantity ?? "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontFamily: AssetsManager.gilroyMedium,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }

  Row _buildPriceAndArrow(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (offerPrice != 0)
              SizedBox(
                width: 60.w,
                child: Text(
                  "$offerPrice ${StringsManager.currency.tr()}",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        fontFamily: AssetsManager.gilroySemiBold,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                      ),
                ),
              ),
            SizedBox(
              width: 60.w,
              child: Text(
                "$price ${StringsManager.currency.tr()}",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: offerPrice == 0
                    ? Theme.of(context).textTheme.labelMedium!.copyWith(
                          fontFamily: AssetsManager.gilroySemiBold,
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                        )
                    : Theme.of(context).textTheme.labelMedium!.copyWith(
                          fontFamily: AssetsManager.gilroySemiBold,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.lineThrough,
                          fontSize: 14.sp,
                        ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10.w,
        ),
        const Icon(
          Icons.arrow_forward_ios_rounded,
        ),
      ],
    );
  }
}
