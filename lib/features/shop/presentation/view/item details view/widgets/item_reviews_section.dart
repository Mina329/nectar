import 'package:easy_localization/easy_localization.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/features/shop/presentation/view/item%20details%20view/widgets/review_item.dart';

import '../../../../../../core/utils/assets_manager.dart';
import '../../../../../../core/utils/color_manager.dart';

class ItemReviewsSection extends StatelessWidget {
  const ItemReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 18.h,
        ),
        ExpandablePanel(
          theme: ExpandableThemeData(
              iconColor: Theme.of(context).brightness == Brightness.light
                  ? ColorManager.greySmall
                  : ColorManager.grayOpacity),
          header: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                StringsManager.reviews.tr(),
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontFamily: AssetsManager.gilroySemiBold,
                    fontWeight: FontWeight.w600),
              ),
              Row(
                  children: List.generate(
                5,
                (index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: const Icon(
                    FontAwesomeIcons.solidStar,
                    color: ColorManager.accentColor,
                  ),
                ),
              ))
            ],
          ),
          collapsed: Container(),
          expanded: Column(
            children: List.generate(
              10,
              (index) => const ReviewItem(),
            ),
          ),
        ),
        SizedBox(
          height: 18.h,
        ),
      ],
    );
  }
}
