import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/features/shop/presentation/view%20model/section_details_cubit/section_details_cubit.dart';

import '../../../../../../core/utils/assets_manager.dart';
import '../../../../../../core/widgets/custom_empty_widget.dart';
import '../../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../../../core/widgets/custom_toast_widget.dart';
import '../../../../../explore/presentation/view/category details view/widgets/custom_category_app_bar.dart';
import '../../../../../explore/presentation/view/category details view/widgets/item_grid_shimmer.dart';
import '../../../../data/models/thumbnail_grocery_item_model/thumbnail_grocery_item_model/thumbnail_grocery_item_model.dart';
import '../../shop view/widgets/grocery_item.dart';

class SectionViewBody extends StatelessWidget {
  SectionViewBody({super.key});
  final ScrollController scrollController = ScrollController();
  void setupScrollController(context) {
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        if (scrollController.position.pixels != 0) {
          BlocProvider.of<SectionDetailsCubit>(context).loadItems();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    setupScrollController(context);
    BlocProvider.of<SectionDetailsCubit>(context).loadItems();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomCategoryAppBar(
              title: BlocProvider.of<SectionDetailsCubit>(context).sectionName[
                  BlocProvider.of<SectionDetailsCubit>(context).sectionType]),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: CustomScrollView(
                controller: scrollController,
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                slivers: [
                  BlocBuilder<SectionDetailsCubit, SectionDetailsState>(
                    builder: (context, state) {
                      if (state is SectionDetailsFailure) {
                        CustomToastWidget.buildCustomToast(context,
                            state.errMessage, ToastType.failure, 200.h);
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
                      if (state is SectionDetailsLoading &&
                          state.isFirstFetch) {
                        return const ItemGridShimmer();
                      }
                      List<ThumbnailGroceryItemModel> items = [];
                      bool isloading = false;
                      if (state is SectionDetailsLoading) {
                        items = state.oldItems;
                        isloading = true;
                      } else if (state is SectionDetailsSuccess) {
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
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
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
                                  columnCount: 2,
                                  position: index,
                                  duration: const Duration(milliseconds: 375),
                                  child: SlideAnimation(
                                    verticalOffset: 50.h,
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
                                Timer(const Duration(milliseconds: 30), () {
                                  scrollController.jumpTo(scrollController
                                      .position.maxScrollExtent);
                                });
                                return const CustomCircularIndicator();
                              }
                            },
                          ),
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
