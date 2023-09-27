import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const CustomShopAppBar(),
          const CustomSearchBar(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20.h,
            ),
          ),
          const BannerListView(),
          
          const ExclusiveOfferSection(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30.h,
            ),
          ),
          const BestSellingSection(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30.h,
            ),
          ),
          const GroceriesSection()
        ],
      ),
    );
  }
}
