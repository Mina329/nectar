

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/features/cart/presentation/view%20model/cart_item_cubit/cart_item_cubit.dart';

import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/strings_manager.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../../core/widgets/custom_toast_widget.dart';
import '../../view model/cart_cubit/cart_cubit.dart';
import 'cart_item_action_buttons.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
  }) : super(key: key);

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
                _buildImage(context),
                SizedBox(
                  width: 10.w,
                ),
                SizedBox(
                  height: 133.h,
                  width: 254.w,
                  child: BlocListener<CartItemCubit, CartItemState>(
                    listener: (context, state) {
                      if (state is CartItemLoading) {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return const CustomLoadingIndicator();
                          },
                        );
                      } else {
                        GoRouter.of(context).pop();
                      }
                    },
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
                        _buildActionButtonsWithPrice(context)
                      ],
                    ),
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

  Widget _buildImage(BuildContext context) {
    return BlocProvider.of<CartItemCubit>(context).item.item!.thumbnail == null
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
              imageUrl:
                  BlocProvider.of<CartItemCubit>(context).item.item!.thumbnail!,
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

  SizedBox _buildActionButtonsWithPrice(BuildContext context) {
    return SizedBox(
      height: 47.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const CartItemActionButtons(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (BlocProvider.of<CartItemCubit>(context)
                      .item
                      .item!
                      .offerPrice !=
                  0)
                Text(
                  "${BlocProvider.of<CartItemCubit>(context).item.item!.offerPrice.toString()} ${StringsManager.currency.tr()}",
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        fontFamily: AssetsManager.gilroySemiBold,
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                      ),
                ),
              Text(
                "${BlocProvider.of<CartItemCubit>(context).item.item!.price != null ? BlocProvider.of<CartItemCubit>(context).item.item!.price.toString() : 0} ${StringsManager.currency.tr()}",
                style: BlocProvider.of<CartItemCubit>(context)
                            .item
                            .item!
                            .offerPrice ==
                        0
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
      BlocProvider.of<CartItemCubit>(context).item.item!.qtyType ?? '',
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
            BlocProvider.of<CartItemCubit>(context).item.item!.name ??
                StringsManager.unavailable.tr(),
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        BlocListener<CartItemCubit, CartItemState>(
          listener: (context, state) {
            if (state is CartItemFailure) {
              CustomToastWidget.buildCustomToast(
                  context, state.errMessage, ToastType.failure, 200.h);
            } else if (state is CartItemSuccess) {
              if (BlocProvider.of<CartItemCubit>(context).quantity <= 0) {
                BlocProvider.of<CartCubit>(context).refreshCart(
                    BlocProvider.of<CartItemCubit>(context).item.item!.id!);
              } else {
                BlocProvider.of<CartCubit>(context).refreshCartWithNewQuantity(
                    BlocProvider.of<CartItemCubit>(context).item.item!.id!,
                    BlocProvider.of<CartItemCubit>(context).quantity);
              }
            }
          },
          child: InkWell(
            onTap: () {
              BlocProvider.of<CartItemCubit>(context).deleteItem();
            },
            child: const Icon(
              Icons.close,
              color: ColorManager.greySmall,
            ),
          ),
        )
      ],
    );
  }
}
