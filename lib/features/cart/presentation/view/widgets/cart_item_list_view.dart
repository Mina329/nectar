import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import 'cart_item.dart';

class CartItemListView extends StatelessWidget {
  const CartItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kItemDetailsView,extra: 'id');
              },
              child: const CartItem()),
        ),
        childCount: 10,
      ),
    );
  }
}
