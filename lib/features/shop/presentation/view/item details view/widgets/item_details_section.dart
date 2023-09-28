import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/models/grocery_item_model/grocery_item_model.dart';
import 'item_product_detail.dart';
import 'item_reviews_section.dart';
import 'item_title_price.dart';

class ItemDetailsSection extends StatelessWidget {
  const ItemDetailsSection({super.key, required this.item});
  final GroceryItemModel item;
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
              name: item.name,
              price: item.price,
              quantity: "${item.quantity} ${item.quantityType}",
              favourite: item.isFavorite,
              offerPrice: item.offerPrice,
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
