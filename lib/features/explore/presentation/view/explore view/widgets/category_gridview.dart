import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/core/utils/assets_manager.dart';
import 'package:nectar/features/explore/presentation/view%20model/categories_cubit/categories_cubit.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../../../core/widgets/custom_empty_widget.dart';
import '../../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../../../core/widgets/custom_toast_widget.dart';
import '../../../../../shop/data/models/thumbnail_grocery_item_model/thumbnail_grocery_item_model/thumbnail_grocery_item_model.dart';
import '../../../../../shop/presentation/view/shop view/widgets/grocery_item.dart';
import '../../category details view/widgets/item_grid_shimmer.dart';
import 'category_item.dart';
import 'category_shimmer.dart';

// ignore: must_be_immutable
class CategoryGridView extends StatelessWidget {
  const CategoryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, state) {
        if (state is CategoriesLoading) {
          return SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 175.w / 200.h,
                crossAxisCount: 2,
                mainAxisSpacing: 14.h,
                crossAxisSpacing: 14.w,
              ),
              delegate: SliverChildBuilderDelegate(
                childCount: 9,
                (context, index) => Shimmer.fromColors(
                    baseColor: Colors.grey[400]!,
                    highlightColor: Colors.grey[200]!,
                    child: const CategoryShimmer()),
              ));
        } else if (state is CategoriesFailure) {
          CustomToastWidget.buildCustomToast(
              context, state.errMessage, ToastType.failure, 200.h);
          return SliverToBoxAdapter(
            child: Center(
              child: SvgPicture.asset(
                AssetsManager.error,
                width: 300.w,
                height: 500.h,
              ),
            ),
          );
        } else if (state is CategoriesSuccess) {
          if (state.categories.isEmpty) {
            return const SliverFillRemaining(
              child: CustomEmptyWidget(),
            );
          }
          return AnimationLimiter(
            child: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 175.w / 200.h,
                  crossAxisCount: 2,
                  mainAxisSpacing: 14.h,
                  crossAxisSpacing: 14.w,
                ),
                delegate: SliverChildBuilderDelegate(
                  childCount: state.categories.length,
                  (context, index) => AnimationConfiguration.staggeredGrid(
                    position: index,
                    duration: const Duration(milliseconds: 375),
                    columnCount: 2,
                    child: SlideAnimation(
                      child: FadeInAnimation(
                        child: CategoryItem(
                          category: state.categories[index],
                          color:
                              BlocProvider.of<CategoriesCubit>(context).colors[
                                  index %
                                      BlocProvider.of<CategoriesCubit>(context)
                                          .colors
                                          .length],
                        ),
                      ),
                    ),
                  ),
                )),
          );
        }
        if (state is SearchItemsLoading && state.isFirstFetch) {
          return const ItemGridShimmer();
        }
        List<ThumbnailGroceryItemModel> items = [];
        bool isloading = false;
        if (state is SearchItemsLoading) {
          items = state.oldItems;
          isloading = true;
        } else if (state is SearchItemsSuccess) {
          items = state.items;
        }

        if (items.isEmpty) {
          return const SliverFillRemaining(
            child: Center(
              child: CustomEmptyWidget(),
            ),
          );
        }
        return AnimationLimiter(
          child: SliverGrid(
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
                  return AnimationConfiguration.staggeredGrid(
                    position: index,
                    duration: const Duration(milliseconds: 375),
                    columnCount: 2,
                    child: SlideAnimation(
                      child: FadeInAnimation(
                        child: GroceryItem(
                          id: items[index].id,
                          name: items[index].name,
                          price: items[index].price.toString(),
                          imageLink: items[index].thumbnail ?? "",
                          quantity: items[index].qtyType ?? '',
                          offerPrice: items[index].offerPrice,
                        ),
                      ),
                    ),
                  );
                } else {
                  return const CustomCircularIndicator();
                }
              },
            ),
          ),
        );
      },
    );
  }
}
