
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/features/explore/presentation/view%20model/categories_cubit/categories_cubit.dart';
import '../../../../../../core/utils/strings_manager.dart';
import '../../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../../core/widgets/custom_search_bar.dart';
import 'category_gridview.dart';

class ExploreViewBody extends StatelessWidget {
  ExploreViewBody({super.key});
  final ScrollController scrollController = ScrollController();
  void setupScrollController(context) {
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        if (scrollController.position.pixels != 0) {
          BlocProvider.of<CategoriesCubit>(context).loadItems();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    setupScrollController(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: CustomScrollView(
        controller: scrollController,
        physics: const BouncingScrollPhysics(),
        slivers: [
          CustomAppBar(
            title: StringsManager.findProducts.tr(),
          ),
          CustomSearchBar(
            onChanged: (p0) {
              if (p0 == '') {
                BlocProvider.of<CategoriesCubit>(context).fetchCategories();
                BlocProvider.of<CategoriesCubit>(context).page = 1;
                BlocProvider.of<CategoriesCubit>(context).isFirst = true;
              } else {
                BlocProvider.of<CategoriesCubit>(context).query = p0;
                BlocProvider.of<CategoriesCubit>(context).page = 1;
                BlocProvider.of<CategoriesCubit>(context).isFirst = true;
                BlocProvider.of<CategoriesCubit>(context).loadItems();
              }
            },
            flag: true,
          ),
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
    );
  }
}
