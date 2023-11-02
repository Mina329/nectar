import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/cache/cache_helper.dart';

import '../../features/home/presentation/view_model/navigation_bar_cubit/navigation_bar_cubit.dart';
import '../cache/cache_keys_values.dart';
import '../utils/strings_manager.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({
    super.key,
    required this.onItemTapped,
    required this.selectedIndex,
  });

  final Function(int) onItemTapped;
  final int selectedIndex;

  final List<String> labelsList = [
    StringsManager.shop.tr(),
    StringsManager.explore.tr(),
    StringsManager.cart.tr(),
    StringsManager.favorite.tr(),
    StringsManager.account.tr(),
  ];

  final int itemCount = 5;

  @override
  Widget build(BuildContext context) {
    final List<Widget> iconsList = [
      Icon(
        Icons.storefront,
        size: 24.sp,
      ),
      Icon(
        Icons.manage_search,
        size: 24.sp,
      ),
      Stack(
        children: [
          Icon(
            Icons.shopping_cart_outlined,
            size: 24.sp,
          ),
          Positioned(
            top: 0,
            right: CacheData.getData(key: CacheKeys.kLANGUAGE) ==
                    CacheValues.ARABIC
                ? null
                : 0,
            left: CacheData.getData(key: CacheKeys.kLANGUAGE) ==
                    CacheValues.ARABIC
                ? 0
                : null,
            child: BlocBuilder<NavigationBarCubit, NavigationBarState>(
              builder: (context, state) {
                return Visibility(
                  visible:
                      BlocProvider.of<NavigationBarCubit>(context).cartNotify,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
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
    List<BottomNavigationBarItem> generateItems() {
      return List.generate(
        itemCount,
        (index) => BottomNavigationBarItem(
          icon: iconsList[index],
          label: labelsList[index],
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 10,
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
          items: generateItems(),
        ),
      ),
    );
  }
}
