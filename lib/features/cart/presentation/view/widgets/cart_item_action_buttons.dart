import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/core/widgets/custom_rounded_square_widget.dart';

import '../../../../../core/utils/color_manager.dart';

class CartItemActionButtons extends StatelessWidget {
  const CartItemActionButtons({
    super.key,
    required this.quantity,
    required this.onMinusTap,
    required this.onPlusTap,
  });

  final Function()? onMinusTap;
  final Function()? onPlusTap;
  final int quantity;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47.h,
      child: Row(
        children: [
          CustomRoundedSquareWidget(
            onTap: onMinusTap,
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
          Text(
            quantity.toString(),
            style: Theme.of(context).textTheme.labelMedium,
          ),
          SizedBox(
            width: 17.w,
          ),
          CustomRoundedSquareWidget(
            onTap: onPlusTap,
            child: Icon(
              FontAwesomeIcons.plus,
              color: Theme.of(context).brightness == Brightness.light
                  ? ColorManager.green
                  : ColorManager.grayOpacity,
            ),
          ),
        ],
      ),
    );
  }
}
