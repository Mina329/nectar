import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nectar/features/explore/presentation/view%20model/category_items_cubit/category_items_cubit.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../core/utils/api_service.dart';
import '../../../../../../core/utils/assets_manager.dart';
import '../../../../../../core/widgets/custom_empty_widget.dart';
import '../../../../../../core/widgets/item_shimmer.dart';
import '../../../../../shop/presentation/view/widgets/grocery_item.dart';

class GroceryItemGridView extends StatelessWidget {
  const GroceryItemGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryItemsCubit, CategoryItemsState>(
      builder: (context, state) {
        if (state is CategoryItemsLoading) {
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
        } else if (state is CategoryItemsFailure) {
          Fluttertoast.showToast(msg: state.errMessage);
          return SliverToBoxAdapter(
            child: Center(
              child: SvgPicture.asset(
                AssetsManager.error,
                width: 300.w,
                height: 500.h,
              ),
            ),
          );
        } else if (state is CategoryItemsSuccess) {
          if (state.categoryItems.isEmpty) {
            return const SliverFillRemaining(
              child: CustomEmptyWidget(),
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
                childCount: state.categoryItems.length,
                (context, index) => GroceryItem(
                    name: state.categoryItems[index].name!,
                    price: state.categoryItems[index].price.toString(),
                    imageLink: state.categoryItems[index].thumbnail == null
                        ? ""
                        : "${ApiService.baseUrl}${state.categoryItems[index].thumbnail}",
                    quantity:
                        "${state.categoryItems[index].quantity}${state.categoryItems[index].quantityType}"),
              ));
        }
        return const SliverToBoxAdapter();
      },
    );
  }
}

