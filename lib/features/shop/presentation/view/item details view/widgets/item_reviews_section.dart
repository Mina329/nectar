import 'package:easy_localization/easy_localization.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/features/shop/presentation/view/item%20details%20view/widgets/review_item.dart';

import '../../../../../../core/utils/assets_manager.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../data/models/grocery_item_model/review.dart';

class ItemReviewsSection extends StatelessWidget {
  const ItemReviewsSection({super.key, required this.reviews});
  final List<Review>? reviews;
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
          header: Text(
            StringsManager.reviews.tr(),
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontFamily: AssetsManager.gilroySemiBold,
                fontWeight: FontWeight.w600),
          ),
          collapsed: Container(),
          expanded: Column(
            children: List.generate(
              reviews!.isEmpty ? 1 : reviews!.length,
              (index) => reviews!.isEmpty
                  ? Text(
                      StringsManager.noReviews.tr(),
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontFamily: AssetsManager.gilroyMedium,
                          fontWeight: FontWeight.w400),
                    )
                  : ReviewItem(
                      name:
                          "${reviews![index].user!.firstName ?? StringsManager.anonymousUser.tr()} ${reviews![index].user!.lastName ?? ""}",
                      review: reviews![index].comment,
                      image: reviews![index].user!.profilePicture,
                    ),
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
