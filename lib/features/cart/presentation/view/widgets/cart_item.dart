import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_rounded_square_widget.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

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
                      _buildActionButtonsWithPrice(context)
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
      height: 96.h,
      width: 100.w,
    );
  }

  SizedBox _buildActionButtonsWithPrice(BuildContext context) {
    return SizedBox(
      height: 47.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _buildActionButtons(context),
          Text(
            "\$4.99",
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontFamily: AssetsManager.gilroySemiBold,
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp,
                ),
          )
        ],
      ),
    );
  }

  SizedBox _buildActionButtons(BuildContext context) {
    return SizedBox(
      height: 47.h,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: CustomRoundedSquareWidget(
              child: Icon(
                FontAwesomeIcons.minus,
                color: Theme.of(context).brightness == Brightness.light
                    ? ColorManager.greySmall
                    : ColorManager.grayOpacity,
              ),
            ),
          ),
          SizedBox(
            width: 17.w,
          ),
          Text(
            "1",
            style: Theme.of(context).textTheme.labelMedium,
          ),
          SizedBox(
            width: 17.w,
          ),
          GestureDetector(
            onTap: () {},
            child: CustomRoundedSquareWidget(
              child: Icon(
                FontAwesomeIcons.plus,
                color: Theme.of(context).brightness == Brightness.light
                    ? ColorManager.green
                    : ColorManager.grayOpacity,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Text _buildQuantity(BuildContext context) {
    return Text(
      "1kg, Price",
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
          fontFamily: AssetsManager.gilroyMedium, fontWeight: FontWeight.w500),
    );
  }

  Row _buildTitleAndClose(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Bell Pepper Red",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.close,
            color: ColorManager.greySmall,
          ),
        )
      ],
    );
  }
}
