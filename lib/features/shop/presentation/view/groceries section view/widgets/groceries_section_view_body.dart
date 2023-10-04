import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/features/shop/presentation/view%20model/groceries_section_details_cubit/groceries_section_details_cubit.dart';

import '../../../../../../core/cache/cache_helper.dart';
import '../../../../../../core/cache/cache_keys_values.dart';
import '../../../../../../core/utils/strings_manager.dart';
import '../../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../../explore/presentation/view/category details view/widgets/custom_category_app_bar.dart';
import '../../../../../explore/presentation/view/category details view/widgets/grocery_item_grid_view.dart';
import '../../../../data/models/thumbnail_grocery_item_model/thumbnail_grocery_item_model/thumbnail_grocery_item_model.dart';
import '../../shop view/widgets/grocery_item.dart';

class GroceriesSectionViewBody extends StatelessWidget {
  GroceriesSectionViewBody({super.key});
  final ScrollController scrollController = ScrollController();
  void setupScrollController(context) {
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        if (scrollController.position.pixels != 0) {
          BlocProvider.of<GroceriesSectionDetailsCubit>(context).loadItems(
            CacheData.getData(key: CacheKeys.kLANGUAGE) == CacheValues.ARABIC
                ? "ar"
                : "en",
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    setupScrollController(context);
    BlocProvider.of<GroceriesSectionDetailsCubit>(context).loadItems(
      CacheData.getData(key: CacheKeys.kLANGUAGE) == CacheValues.ARABIC
          ? "ar"
          : "en",
    );
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomCategoryAppBar(title: StringsManager.groceries.tr()),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: CustomScrollView(
                controller: scrollController,
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                slivers: [
                  BlocBuilder<GroceriesSectionDetailsCubit,
                      GroceriesSectionDetailsState>(
                    builder: (context, state) {
                      if (state is GroceriesSectionDetailsLoading &&
                          state.isFirstFetch) {
                        return const ItemGridShimmer();
                      }
                      List<ThumbnailGroceryItemModel> items = [];
                      bool isloading = false;
                      if (state is GroceriesSectionDetailsLoading) {
                        items = state.oldItems;
                        isloading = true;
                      } else if (state is GroceriesSectionDetailsLoaded) {
                        items = state.items;
                      }
                      return SliverGrid(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 173.w / 255.h,
                          crossAxisCount: 2,
                          mainAxisSpacing: 14.h,
                          crossAxisSpacing: 14.w,
                        ),
                        delegate: SliverChildBuilderDelegate(
                          childCount: items.length + (isloading ? 1 : 0),
                          (context, index) {
                            if (index < items.length) {
                              return GroceryItem(
                                id: items[index].id,
                                name: items[index].name,
                                price: items[index].price.toString(),
                                imageLink: items[index].thumbnail ?? "",
                                quantity: items[index].qtyType ?? '',
                                offerPrice: items[index].offerPrice,
                              );
                            } else {
                              Timer(const Duration(milliseconds: 30), () {
                                scrollController.jumpTo(
                                    scrollController.position.maxScrollExtent);
                              });
                              return const CustomCircularIndicator();
                            }
                          },
                        ),
                      );
                    },
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 20.h,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
