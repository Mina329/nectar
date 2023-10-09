import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/core/widgets/custom_empty_widget.dart';
import 'package:nectar/core/widgets/custom_toast_widget.dart';
import 'package:nectar/features/explore/presentation/view%20model/category_items_cubit/category_items_cubit.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../../../core/utils/assets_manager.dart';
import '../../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../../../core/widgets/item_shimmer.dart';
import '../../../../../shop/data/models/thumbnail_grocery_item_model/thumbnail_grocery_item_model/thumbnail_grocery_item_model.dart';
import '../../../../../shop/presentation/view/shop view/widgets/grocery_item.dart';

class GroceryItemGridView extends StatelessWidget {
  GroceryItemGridView({super.key, required this.categoryId});
  final ScrollController scrollController = ScrollController();
  final String categoryId;
  void setupScrollController(context) {
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        if (scrollController.position.pixels != 0) {
          BlocProvider.of<CategoryItemsCubit>(context).loadItems(categoryId);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    setupScrollController(context);
    BlocProvider.of<CategoryItemsCubit>(context).loadItems(categoryId);
    return BlocBuilder<CategoryItemsCubit, CategoryItemsState>(
      builder: (context, state) {
        if (state is CategoryItemsFailure) {
          CustomToastWidget.buildCustomToast(
              context, state.errMessage, ToastType.failure, 200.h);
          return SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: SvgPicture.asset(
                  AssetsManager.error,
                  width: 300.w,
                  height: 500.h,
                ),
              ),
            ),
          );
        }
        if (state is CategoryItemsLoading && state.isFirstFetch) {
          return const ItemGridShimmer();
        }
        List<ThumbnailGroceryItemModel> items = [];
        bool isloading = false;
        if (state is CategoryItemsLoading) {
          items = state.oldItems;
          isloading = true;
        } else if (state is CategoryItemsLoaded) {
          items = state.items;
        }
        if (items.isEmpty) {
          return const SliverFillRemaining(
            child: Center(
              child: CustomEmptyWidget(),
            ),
          );
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
                  scrollController
                      .jumpTo(scrollController.position.maxScrollExtent);
                });
                return const CustomCircularIndicator();
              }
            },
          ),
        );
      },
    );
  }
}

class ItemGridShimmer extends StatelessWidget {
  const ItemGridShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 173.w / 255.h,
          crossAxisCount: 2,
          mainAxisSpacing: 14.h,
          crossAxisSpacing: 14.w,
        ),
        delegate: SliverChildBuilderDelegate(
          childCount: 9,
          (context, index) => Shimmer.fromColors(
              baseColor: Colors.grey[400]!,
              highlightColor: Colors.grey[200]!,
              child: const ItemShimmer()),
        ));
  }
}
