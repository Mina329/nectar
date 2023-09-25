import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nectar/core/utils/assets_manager.dart';
import 'package:nectar/features/explore/presentation/view%20model/categories_cubit/categories_cubit.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../../../core/widgets/custom_empty_widget.dart';
import 'category_item.dart';
import 'category_shimmer.dart';

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
        } else if (state is CategoriesSuccess) {
          if (state.categories.isEmpty) {
            return const SliverFillRemaining(
              child: CustomEmptyWidget(),
            );
          }
          return SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 175.w / 200.h,
                crossAxisCount: 2,
                mainAxisSpacing: 14.h,
                crossAxisSpacing: 14.w,
              ),
              delegate: SliverChildBuilderDelegate(
                childCount: state.categories.length,
                (context, index) => CategoryItem(
                  category: state.categories[index],
                  color: BlocProvider.of<CategoriesCubit>(context).colors[
                      index %
                          BlocProvider.of<CategoriesCubit>(context)
                              .colors
                              .length],
                ),
              ));
        }
        return const SliverToBoxAdapter();
      },
    );
  }
}
