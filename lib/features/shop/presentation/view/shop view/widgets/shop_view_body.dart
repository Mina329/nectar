
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/widgets/custom_search_bar.dart';
import '../../../view model/best_selling_cubit/best_selling_cubit.dart';
import '../../../view model/exclusive_offers_cubit/exclusive_offers_cubit.dart';
import '../../../view model/groceries_section_cubit/groceries_section_cubit.dart';
import 'banner_listview.dart';
import 'best_selling_section.dart';
import 'custom_shop_appbar.dart';
import 'exclusive_offer_section.dart';
import 'groceries_section.dart';

class ShopViewBody extends StatefulWidget {
  const ShopViewBody({super.key});

  @override
  State<ShopViewBody> createState() => _ShopViewBodyState();
}

class _ShopViewBodyState extends State<ShopViewBody> {
  late ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_scrollController.offset > 0.0) {
          _scrollController.animateTo(
            0.0,
            duration: const Duration(
              milliseconds: 500,
            ),
            curve: Curves.ease,
          );
          return false;
        } else {
          return true;
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          controller: _scrollController,
          slivers: [
            const CustomShopAppBar(),
            CustomSearchBar(
              onChanged: (p0) {
                BlocProvider.of<ExclusiveOffersCubit>(context)
                    .getExclusiveOffersItems(filter: p0);
                BlocProvider.of<GroceriesSectionCubit>(context)
                    .getAllItems(filter: p0);
                BlocProvider.of<BestSellingCubit>(context)
                    .getBestSellingItems(filter: p0);
              },
              flag: false,
            ),
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
      ),
    );
  }
}
