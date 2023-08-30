import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/strings_manager.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({
    super.key,
    required this.onItemTapped,
    required this.selectedIndex,
    required this.height,
  });

  final Function(int) onItemTapped;
  final int selectedIndex;
  final double height;
  final List<Icon> iconsList = [
    Icon(
      Icons.storefront,
      size: 24.sp,
    ),
    Icon(
      Icons.manage_search,
      size: 24.sp,
    ),
    Icon(
      Icons.shopping_cart_outlined,
      size: 24.sp,
    ),
    Icon(
      Icons.favorite_border,
      size: 24.sp,
    ),
    Icon(
      Icons.person_outlined,
      size: 24.sp,
    ),
  ];

  final List<String> labelsList = [
    StringsManager.shop.tr(),
    StringsManager.explore.tr(),
    StringsManager.cart.tr(),
    StringsManager.favorite.tr(),
    StringsManager.account.tr(),
  ];

  final int itemCount = 5;

  List<BottomNavigationBarItem> _generateItems() {
    return List.generate(
      itemCount,
      (index) => BottomNavigationBarItem(
        icon: iconsList[index],
        label: labelsList[index],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 20,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          items: _generateItems(),
        ),
      ),
    );
  }
}
