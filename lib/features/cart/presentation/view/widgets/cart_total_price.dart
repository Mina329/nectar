import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/features/cart/presentation/view%20model/cart_cubit/cart_cubit.dart';
import '../../../../../core/utils/color_manager.dart';

class CartTotalPrice extends StatelessWidget {
  const CartTotalPrice({
    super.key,
    required this.isArabic,
  });
  final bool isArabic;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: isArabic ? null : 50.w,
      left: isArabic ? 50.w : null,
      bottom: 47.h,
      child: Container(
        height: 22.h,
        decoration: const BoxDecoration(
          color: ColorManager.darkGreen,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Center(
            child: Text(
          "${BlocProvider.of<CartCubit>(context).totalPrice} ${StringsManager.currency.tr()}",
          style:
              Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 12.sp),
        )),
      ),
    );
  }
}
