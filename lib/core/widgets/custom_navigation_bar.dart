import 'package:flutter/material.dart';

import '../utils/strings_manager.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({
    super.key,
    required this.onItemTapped,
    required this.selectedIndex,
  });

  final Function(int) onItemTapped;
  final int selectedIndex;

  final List<Icon> iconsList = [
    const Icon(Icons.storefront),
    const Icon(Icons.manage_search),
    const Icon(Icons.shopping_cart_outlined),
    const Icon(Icons.favorite_border),
    const Icon(Icons.person_outlined),
  ];

  final List<String> labelsList = [
    StringsManager.shop,
    StringsManager.explore,
    StringsManager.cart,
    StringsManager.favorite,
    StringsManager.account,
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
      height: 75,
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
