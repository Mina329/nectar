import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/core/widgets/custom_elevated_btn.dart';
import 'item_details_section.dart';
import 'item_image_section.dart';

class ItemDetailsViewBody extends StatelessWidget {
  const ItemDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        const ItemImageSection(),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 25.h,
          ),
        ),
        const ItemDetailsSection(),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding:  EdgeInsets.only(bottom: 40.h),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 70.h,
                width: 370.w,
                child: CustomElevatedBtn(
                  onPressed: () {},
                  txt: StringsManager.addToCart.tr(),
                  style: Theme.of(context).textTheme.labelLarge!,
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
