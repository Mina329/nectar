import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../explore/data/models/category_item_model/category_item_model.dart';
import '../../shop view/widgets/grocery_item.dart';

class SectionDetailsGridView extends StatelessWidget {
  const SectionDetailsGridView({super.key, required this.items});
  final List<CategoryItemModel> items;
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 173.w / 255.h,
        crossAxisCount: 2,
        mainAxisSpacing: 14.h,
        crossAxisSpacing: 14.w,
      ),
      delegate: SliverChildBuilderDelegate(
        childCount: items.length,
        (context, index) => GroceryItem(
          name: items[index].name!,
          price: items[index].price.toString(),
          imageLink: items[index].thumbnail ?? "",
          quantity: "${items[index].quantity}${items[index].quantityType}",
          offerPrice: items[index].offerPrice,
        ),
      ),
    );
  }
}
