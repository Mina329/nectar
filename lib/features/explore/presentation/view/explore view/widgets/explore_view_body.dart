import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/color_manager.dart';
import 'package:nectar/features/explore/presentation/view%20model/categories_cubit/categories_cubit.dart';
import '../../../../../../core/utils/strings_manager.dart';
import '../../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../../core/widgets/custom_search_bar.dart';
import 'category_gridview.dart';

class ExploreViewBody extends StatelessWidget {
  const ExploreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: ColorManager.green,
      edgeOffset: 70,

      onRefresh: () async {
        BlocProvider.of<CategoriesCubit>(context).fetchCategories();
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            CustomAppBar(
              title: StringsManager.findProducts.tr(),
            ),
            const CustomSearchBar(),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20.h,
              ),
            ),
            const CategoryGridView(),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
