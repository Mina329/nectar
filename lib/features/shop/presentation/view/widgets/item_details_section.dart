import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'item_product_detail.dart';
import 'item_reviews_section.dart';
import 'item_title_price.dart';

class ItemDetailsSection extends StatelessWidget {
  const ItemDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ItemTitlePrice(),
            Divider(),
            ItemProductDetail(),
            Divider(),
            ItemReviewsSection(),
          ],
        ),
      ),
    );
  }
}
