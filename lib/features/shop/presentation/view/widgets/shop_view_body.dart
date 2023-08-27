import 'package:flutter/material.dart';
import 'package:nectar/core/widgets/custom_search_bar.dart';
import 'banner_listview.dart';
import 'best_selling_section.dart';
import 'custom_shop_appbar.dart';
import 'exclusive_offer_section.dart';
import 'groceries_section.dart';

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
          CustomSearchBar(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          BannerListView(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          ExclusiveOfferSection(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          BestSellingSection(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          GroceriesSection()
        ],
      ),
    );
  }
}
