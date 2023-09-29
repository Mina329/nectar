import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/assets_manager.dart';
import 'package:nectar/features/favourite/presentation/view%20model/favourite_items_cubit/favourite_items_cubit.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widgets/custom_empty_widget.dart';
import 'favourite_item.dart';
import 'favourite_item_shimmer.dart';

class FavouriteItemListView extends StatelessWidget {
  const FavouriteItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouriteItemsCubit, FavouriteItemsState>(
      builder: (context, state) {
        if (state is FavouriteItemsLoading) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: const FavouriteItemShimmer());
              },
              childCount: 10,
            ),
          );
        } else if (state is FavouriteItemsFailure) {
          Fluttertoast.showToast(msg: state.errMessage);
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Center(
                child: SvgPicture.asset(
                  AssetsManager.error,
                  width: 300.w,
                  height: 500.h,
                ),
              ),
            ),
          );
        } else if (state is FavouriteItemsSuccess) {
          if (state.favouriteItems.isEmpty) {
            return const SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                child: CustomEmptyWidget(),
              ),
            );
          }
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index < state.favouriteItems.length) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.kItemDetailsView,
                            extra: state.favouriteItems[index].id!);
                      },
                      child: FavouriteItem(
                        image: state.favouriteItems[index].thumbnail,
                        name: state.favouriteItems[index].name,
                        price: state.favouriteItems[index].price,
                        offerPrice: state.favouriteItems[index].offerPrice,
                        quantity:
                            "${state.favouriteItems[index].quantity} ${state.favouriteItems[index].quantityType}",
                      ),
                    ),
                  );
                } else {
                  return SizedBox(
                    height: 70.h,
                  );
                }
              },
              childCount: state.favouriteItems.length + 1,
            ),
          );
        }
        return const SliverToBoxAdapter();
      },
    );
  }
}
