import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/core/widgets/custom_rounded_square_widget.dart';

import '../../../../../../core/utils/assets_manager.dart';
import '../../../../../../core/utils/color_manager.dart';

class ItemTitlePrice extends StatelessWidget {
  const ItemTitlePrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Organic Bananas",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontFamily: AssetsManager.gilroyBold,
                  fontWeight: FontWeight.w700),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.heart,
                  color: ColorManager.greySmall,
                ))
          ],
        ),
        Text(
          "1kg, Price",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 16.sp,
              ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.minus,
                    color: Theme.of(context).brightness == Brightness.light
                        ? ColorManager.greySmall
                        : ColorManager.grayOpacity,
                  ),
                ),
                CustomRoundedSquareWidget(
                  child: Center(
                    child: Text(
                      "1",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.plus,
                    color: Theme.of(context).brightness == Brightness.light
                        ? ColorManager.green
                        : ColorManager.grayOpacity,
                  ),
                ),
              ],
            ),
            Text(
              "\$4.99",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontFamily: AssetsManager.gilroyBold,
                  fontWeight: FontWeight.w800),
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        )
      ],
    );
  }
}
