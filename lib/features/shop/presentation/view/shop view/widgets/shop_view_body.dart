import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/widgets/custom_search_bar.dart';
import '../../../../../../core/cache/cache_helper.dart';
import '../../../../../../core/cache/cache_keys_values.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../explore/presentation/view model/categories_cubit/categories_cubit.dart';
import '../../../view model/best_selling_cubit/best_selling_cubit.dart';
import '../../../view model/exclusive_offers_cubit/exclusive_offers_cubit.dart';
import '../../../view model/groceries_section_cubit/groceries_section_cubit.dart';
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
      child: RefreshIndicator(
        color: ColorManager.green,
        edgeOffset: 70,
        onRefresh: () async {
          BlocProvider.of<ExclusiveOffersCubit>(context)
              .getExclusiveOffersItems(
                  language: CacheData.getData(key: CacheKeys.kLANGUAGE) ==
                          CacheValues.ARABIC
                      ? "ar"
                      : "en");
          BlocProvider.of<CategoriesCubit>(context).fetchCategories();
          BlocProvider.of<GroceriesSectionCubit>(context).getAllItems(
              language: CacheData.getData(key: CacheKeys.kLANGUAGE) ==
                      CacheValues.ARABIC
                  ? "ar"
                  : "en");
          BlocProvider.of<BestSellingCubit>(context).getBestSellingItems(
              language: CacheData.getData(key: CacheKeys.kLANGUAGE) ==
                      CacheValues.ARABIC
                  ? "ar"
                  : "en");
          return Future.delayed(const Duration(seconds: 1));
        },
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
      ),
    );
  }
}
