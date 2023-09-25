import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/core/utils/assets_manager.dart';
import 'package:nectar/features/explore/presentation/view%20model/categories_cubit/categories_cubit.dart';
import 'package:shimmer/shimmer.dart';
import 'category_item.dart';
import 'category_shimmer.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({super.key});

  static const List<Color> colors = [
    Color(0xff59A5C6),
    Color(0xffFFCE54),
    Color(0xffFF5733),
    Color(0xff2ECC71),
    Color(0xff8E44AD),
  ];

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
                  color: colors[index % colors.length],
                ),
              ));
        }
        return const SliverToBoxAdapter();
      },
    );
  }
}
