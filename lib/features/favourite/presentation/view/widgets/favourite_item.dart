import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets_manager.dart';

class FavouriteItem extends StatelessWidget {
  const FavouriteItem({super.key});

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
            height: 65.h,
            width: 364.w,
            child: Row(
              children: [
                _buildImage(),
                SizedBox(
                  width: 30.w,
                ),
                SizedBox(
                  width: 234.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildTitleAndQuantity(context),
                      _buildPriceAndArrow(context)
                    ],
                  ),
                )
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

  Image _buildImage() {
    return Image.asset(
      "assets/images/banana.png",
      height: 54.h,
      width: 100.w,
    );
  }

  Column _buildTitleAndQuantity(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Sprite Can",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(
          height: 6.h,
        ),
        Text(
          "325ml, Price",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontFamily: AssetsManager.gilroyMedium,
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Row _buildPriceAndArrow(BuildContext context) {
    return Row(
      children: [
        Text(
          "\$1.50",
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                fontFamily: AssetsManager.gilroySemiBold,
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
              ),
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
