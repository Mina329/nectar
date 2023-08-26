import 'package:flutter/material.dart';
import 'package:nectar/core/widgets/custom_search_bar.dart';
import 'custom_shop_appbar.dart';

class ShopViewBody extends StatelessWidget {
  const ShopViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          CustomShopAppBar(),
          CustomSearchBar()
        ],
      ),
    );
  }
}
