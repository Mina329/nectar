import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/strings_manager.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import 'cart_item_action_buttons.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
    required this.id,
    required this.name,
    required this.qtyType,
    required this.qty,
    required this.price,
    required this.offerPrice,
    required this.imageLink,
    required this.onMinusTap,
    required this.onPlusTap,
    required this.oncloseTap,
  }) : super(key: key);

  final String? id;
  final String? name;
  final String? qtyType;
  final int? qty;
  final double? price;
  final double? offerPrice;
  final String? imageLink;
  final Function()? onMinusTap;
  final Function()? onPlusTap;
  final Function()? oncloseTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 364.w,
      height: 207.h,
      child: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          SizedBox(
            height: 133.h,
            width: 364.w,
            child: Row(
              children: [
                _buildImage(),
                SizedBox(
                  width: 10.w,
                ),
                SizedBox(
                  height: 133.h,
                  width: 254.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildTitleAndClose(context),
                      SizedBox(
                        height: 5.h,
                      ),
                      _buildQuantity(context),
                      SizedBox(
                        height: 10.h,
                      ),
                      _buildActionButtonsWithPrice(context, id, qty)
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

  Widget _buildImage() {
    return imageLink == null
        ? Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
            child: Image.asset(
              AssetsManager.errorAlt,
              width: 86.w,
              height: 90.h,
            ),
          )
        : Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
            child: CachedNetworkImage(
              imageUrl: imageLink!,
              width: 86.w,
              height: 90.h,
              errorWidget: (context, url, error) {
                return Image.asset(
                  AssetsManager.errorAlt,
                  width: 86.w,
                  height: 90.h,
                );
              },
              placeholder: (context, url) => const CustomCircularIndicator(),
            ),
          );
  }

  SizedBox _buildActionButtonsWithPrice(
      BuildContext context, String? itemId, int? quantity) {
    return SizedBox(
      height: 47.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CartItemActionButtons(
            quantity: quantity!,
            onMinusTap: onMinusTap,
            onPlusTap: onPlusTap,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (offerPrice != 0)
                Text(
                  "${offerPrice.toString()} ${StringsManager.currency.tr()}",
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        fontFamily: AssetsManager.gilroySemiBold,
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                      ),
                ),
              Text(
                "${price != null ? price.toString() : 0} ${StringsManager.currency.tr()}",
                style: offerPrice == 0
                    ? Theme.of(context).textTheme.labelMedium!.copyWith(
                          fontFamily: AssetsManager.gilroySemiBold,
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                        )
                    : Theme.of(context).textTheme.labelMedium!.copyWith(
                          fontFamily: AssetsManager.gilroySemiBold,
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                          decoration: TextDecoration.lineThrough,
                        ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Text _buildQuantity(BuildContext context) {
    return Text(
      qtyType ?? '',
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
          fontFamily: AssetsManager.gilroyMedium, fontWeight: FontWeight.w500),
    );
  }

  Row _buildTitleAndClose(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 200.w,
          child: Text(
            name ?? StringsManager.unavailable.tr(),
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        InkWell(
          onTap: oncloseTap,
          child: const Icon(
            Icons.close,
            color: ColorManager.greySmall,
          ),
        )
      ],
    );
  }
}
