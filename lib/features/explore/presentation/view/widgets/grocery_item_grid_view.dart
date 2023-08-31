import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shop/presentation/view/widgets/grocery_item.dart';

class GroceryItemGridView extends StatelessWidget {
  const GroceryItemGridView({super.key});

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
          childCount: 20,
          (context, index) => const GroceryItem(),
        ));
  }
}
