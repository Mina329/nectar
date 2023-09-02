import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'order_card.dart';

class OrderCardListView extends StatelessWidget {
  const OrderCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      (context, index) => Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: const OrderCard(),
      ),
      childCount: 10,
    ));
  }
}
