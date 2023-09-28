import 'package:easy_localization/easy_localization.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/strings_manager.dart';

import '../../../../../../core/utils/assets_manager.dart';
import '../../../../../../core/utils/color_manager.dart';

class ItemProductDetail extends StatelessWidget {
  const ItemProductDetail({
    super.key,
    required this.description,
  });
  final String? description;
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
            StringsManager.productDetails.tr(),
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontFamily: AssetsManager.gilroySemiBold,
                fontWeight: FontWeight.w600),
          ),
          collapsed: Text(
            description == null || description == "" ? "" : description!,
            maxLines: 1,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontFamily: AssetsManager.gilroyMedium,
                fontWeight: FontWeight.w400),
          ),
          expanded: Text(
            description == null || description == ""
                ? StringsManager.noDescription.tr()
                : description!,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontFamily: AssetsManager.gilroyMedium,
                fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(
          height: 18.h,
        ),
      ],
    );
  }
}
