import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import 'favourite_item.dart';

class FavouriteItemListView extends StatelessWidget {
  const FavouriteItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kItemDetailsView);
              },
              child: const FavouriteItem()),
        ),
        childCount: 10,
      ),
    );
  }
}
