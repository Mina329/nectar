import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/models/grocery_item_model/grocery_item_model.dart';
import 'item_product_detail.dart';
import 'item_reviews_section.dart';
import 'item_title_price.dart';

class ItemDetailsSection extends StatelessWidget {
  const ItemDetailsSection({
    super.key,
    required this.item,
    required this.onCounterChanged,
  });
  final GroceryItemModel item;
  final ValueChanged<int> onCounterChanged;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ItemTitlePrice(
              onCounterChanged: onCounterChanged,
              id: item.id,
              name: item.name,
              price: item.price,
              quantity: item.qtyType ?? '',
              favourite: item.isFavorite,
              offerPrice: item.offerPrice,
              category: item.category?.details?[0].name,
            ),
            const Divider(),
            ItemProductDetail(description: item.description),
            const Divider(),
            ItemReviewsSection(reviews: item.reviews),
          ],
        ),
      ),
    );
  }
}
