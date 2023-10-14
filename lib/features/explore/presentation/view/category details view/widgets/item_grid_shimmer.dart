import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../core/widgets/item_shimmer.dart';

class ItemGridShimmer extends StatelessWidget {
  const ItemGridShimmer({
    super.key,
  });

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
          childCount: 9,
          (context, index) => Shimmer.fromColors(
              baseColor: Colors.grey[400]!,
              highlightColor: Colors.grey[200]!,
              child: const ItemShimmer()),
        ));
  }
}
