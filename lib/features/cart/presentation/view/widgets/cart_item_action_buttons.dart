import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/core/widgets/custom_rounded_square_widget.dart';
import 'package:nectar/core/widgets/custom_toast_widget.dart';
import 'package:nectar/features/cart/presentation/view%20model/cart_cubit/cart_cubit.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../view model/cart_item_cubit/cart_item_cubit.dart';

class CartItemActionButtons extends StatelessWidget {
  const CartItemActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47.h,
      child: BlocListener<CartItemCubit, CartItemState>(
        listener: (context, state) {
          if (state is CartItemFailure) {
            CustomToastWidget.buildCustomToast(
                context, state.errMessage, ToastType.failure, 200.h);
          } else if (state is CartItemSuccess) {
            if (BlocProvider.of<CartItemCubit>(context).quantity <= 0) {
              BlocProvider.of<CartCubit>(context).refreshCart(
                  BlocProvider.of<CartItemCubit>(context).item.item!.id!);
            }
          }
        },
        child: Row(
          children: [
            CustomRoundedSquareWidget(
              onTap: () {
                BlocProvider.of<CartItemCubit>(context).decrementItem();
              },
              child: Icon(
                FontAwesomeIcons.minus,
                color: Theme.of(context).brightness == Brightness.light
                    ? ColorManager.greySmall
                    : ColorManager.grayOpacity,
              ),
            ),
            SizedBox(
              width: 17.w,
            ),
            BlocBuilder<CartItemCubit, CartItemState>(
              builder: (context, state) {
                if (state is CartItemSuccess) {
                  return Text(
                    BlocProvider.of<CartItemCubit>(context).quantity.toString(),
                    style: Theme.of(context).textTheme.labelMedium,
                  );
                }
                return Text(
                  BlocProvider.of<CartItemCubit>(context).quantity.toString(),
                  style: Theme.of(context).textTheme.labelMedium,
                );
              },
            ),
            SizedBox(
              width: 17.w,
            ),
            CustomRoundedSquareWidget(
              onTap: () {
                BlocProvider.of<CartItemCubit>(context).incrementItem();
              },
              child: Icon(
                FontAwesomeIcons.plus,
                color: Theme.of(context).brightness == Brightness.light
                    ? ColorManager.green
                    : ColorManager.grayOpacity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
