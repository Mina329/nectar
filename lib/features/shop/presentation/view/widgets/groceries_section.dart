import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/strings_manager.dart';
import 'category_groceries_section_item.dart';
import 'grocery_item.dart';

class GroceriesSection extends StatelessWidget {
  const GroceriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                StringsManager.groceries,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  StringsManager.seeAll,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Theme.of(context).brightness == Brightness.light
                            ? ColorManager.green
                            : ColorManager.greySmall,
                      ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: 105.h,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(right: 15.w),
                child: const CategoryGroceriesSectionItem(),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: 255.h,
            child: ListView.builder(
              itemCount: 10,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(right: 15.w),
                child: const GroceryItem(),
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
        ],
      ),
    );
  }
}
