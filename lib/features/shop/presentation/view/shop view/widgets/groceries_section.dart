import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/widgets/item_shimmer.dart';
import 'package:nectar/features/explore/presentation/view%20model/categories_cubit/categories_cubit.dart';
import 'package:nectar/features/shop/presentation/view%20model/groceries_section_cubit/groceries_section_cubit.dart';
import 'package:nectar/features/shop/presentation/view/shop%20view/shop_view.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../core/l10n/locales.dart';
import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/strings_manager.dart';
import '../../../../../home/presentation/view_model/navigation_bar_cubit/navigation_bar_cubit.dart';
import 'category_groceries_section_item.dart';
import 'grocery_item.dart';
import 'grocery_section_shimmer.dart';

class GroceriesSection extends StatelessWidget {
  const GroceriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, categoriesState) {
        if (categoriesState is CategoriesLoading) {
          return const GrocerySectionShimmer();
        } else if (categoriesState is CategoriesFailure) {
          return const SliverToBoxAdapter();
        } else if (categoriesState is CategoriesSuccess) {
          return BlocBuilder<GroceriesSectionCubit, GroceriesSectionState>(
            builder: (context, allItemState) {
              if (allItemState is GroceriesSectionLoading) {
                return SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            StringsManager.groceries.tr(),
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        height: 105.h,
                        child: AnimationLimiter(
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: categoriesState.categories.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) =>
                                AnimationConfiguration.staggeredList(
                              position: index,
                              duration: const Duration(milliseconds: 375),
                              child: SlideAnimation(
                                horizontalOffset: 50.w,
                                child: FadeInAnimation(
                                  child: Padding(
                                    padding: context.locale == ENGLISH_LOCALE
                                        ? EdgeInsets.only(right: 15.w)
                                        : EdgeInsets.only(left: 15.w),
                                    child: CategoryGroceriesSectionItem(
                                      color: BlocProvider.of<CategoriesCubit>(
                                                  context)
                                              .colors[
                                          index %
                                              BlocProvider.of<CategoriesCubit>(
                                                      context)
                                                  .colors
                                                  .length],
                                      name: categoriesState
                                          .categories[index].name,
                                      imageLink: categoriesState
                                          .categories[index].image,
                                      category:
                                          categoriesState.categories[index],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        height: 255.h,
                        child: ListView.builder(
                          itemCount: 10,
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Padding(
                            padding: context.locale == ENGLISH_LOCALE
                                ? EdgeInsets.only(right: 15.w)
                                : EdgeInsets.only(left: 15.w),
                            child: Shimmer.fromColors(
                              baseColor: Colors.grey[400]!,
                              highlightColor: Colors.grey[200]!,
                              child: const ItemShimmer(),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                    ],
                  ),
                );
              } else if (allItemState is GroceriesSectionFailure) {
                return SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            StringsManager.groceries.tr(),
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        height: 105.h,
                        child: AnimationLimiter(
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: categoriesState.categories.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) =>
                                AnimationConfiguration.staggeredList(
                              position: index,
                              duration: const Duration(milliseconds: 375),
                              child: SlideAnimation(
                                horizontalOffset: 50.w,
                                child: FadeInAnimation(
                                  child: Padding(
                                    padding: context.locale == ENGLISH_LOCALE
                                        ? EdgeInsets.only(right: 15.w)
                                        : EdgeInsets.only(left: 15.w),
                                    child: CategoryGroceriesSectionItem(
                                      color: BlocProvider.of<CategoriesCubit>(
                                                  context)
                                              .colors[
                                          index %
                                              BlocProvider.of<CategoriesCubit>(
                                                      context)
                                                  .colors
                                                  .length],
                                      name: categoriesState
                                          .categories[index].name,
                                      imageLink: categoriesState
                                          .categories[index].image,
                                      category:
                                          categoriesState.categories[index],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                    ],
                  ),
                );
              } else if (allItemState is GroceriesSectionSuccess) {
                return SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            StringsManager.groceries.tr(),
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          TextButton(
                            onPressed: () {
                              GoRouter.of(context).push(AppRouter.kSectionView,
                                  extra: (
                                    SectionType.groceries,
                                    BlocProvider.of<NavigationBarCubit>(context)
                                  ));
                            },
                            child: Text(
                              StringsManager.seeAll.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                    color: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? ColorManager.green
                                        : ColorManager.greySmall,
                                  ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        height: 105.h,
                        child: AnimationLimiter(
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: categoriesState.categories.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) =>
                                AnimationConfiguration.staggeredList(
                              position: index,
                              duration: const Duration(milliseconds: 375),
                              child: SlideAnimation(
                                horizontalOffset: 50.w,
                                child: FadeInAnimation(
                                  child: Padding(
                                    padding: context.locale == ENGLISH_LOCALE
                                        ? EdgeInsets.only(right: 15.w)
                                        : EdgeInsets.only(left: 15.w),
                                    child: CategoryGroceriesSectionItem(
                                      color: BlocProvider.of<CategoriesCubit>(
                                                  context)
                                              .colors[
                                          index %
                                              BlocProvider.of<CategoriesCubit>(
                                                      context)
                                                  .colors
                                                  .length],
                                      name: categoriesState
                                          .categories[index].name,
                                      imageLink: categoriesState
                                          .categories[index].image,
                                      category:
                                          categoriesState.categories[index],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      if (allItemState.items.isNotEmpty)
                        SizedBox(
                          height: 255.h,
                          child: AnimationLimiter(
                            child: ListView.builder(
                              itemCount: allItemState.items.length > 10
                                  ? 10
                                  : allItemState.items.length,
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) =>
                                  AnimationConfiguration.staggeredList(
                                position: index,
                                duration: const Duration(milliseconds: 375),
                                child: SlideAnimation(
                                  horizontalOffset: 50.w,
                                  child: FadeInAnimation(
                                    child: Padding(
                                      padding: context.locale == ENGLISH_LOCALE
                                          ? EdgeInsets.only(right: 15.w)
                                          : EdgeInsets.only(left: 15.w),
                                      child: GroceryItem(
                                        id: allItemState.items[index].id,
                                        name: allItemState.items[index].name,
                                        price:
                                            "${allItemState.items[index].price}",
                                        imageLink:
                                            allItemState.items[index].thumbnail,
                                        quantity:
                                            allItemState.items[index].qtyType ??
                                                '',
                                        offerPrice: allItemState
                                            .items[index].offerPrice,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      if (allItemState.items.isNotEmpty)
                        SizedBox(
                          height: 40.h,
                        ),
                    ],
                  ),
                );
              }
              return const SliverToBoxAdapter();
            },
          );
        }
        return const SliverToBoxAdapter();
      },
    );
  }
}
