import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/features/explore/presentation/view%20model/categories_cubit/categories_cubit.dart';
import '../../../../../../core/utils/strings_manager.dart';
import '../../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../../core/widgets/custom_search_bar.dart';
import '../../../../../home/presentation/view_model/navigation_bar_cubit/navigation_bar_cubit.dart';
import 'category_gridview.dart';

class ExploreViewBody extends StatefulWidget {
  const ExploreViewBody({super.key});

  @override
  State<ExploreViewBody> createState() => _ExploreViewBodyState();
}

class _ExploreViewBodyState extends State<ExploreViewBody> {
  late ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    setupScrollController(context);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void setupScrollController(context) {
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.pixels != 0) {
          BlocProvider.of<CategoriesCubit>(context).loadItems();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_scrollController.offset > 0.0) {
          _scrollController.animateTo(
            0.0,
            duration: const Duration(
              milliseconds: 500,
            ),
            curve: Curves.ease,
          );
          return false;
        } else {
          BlocProvider.of<NavigationBarCubit>(context)
              .savedPageController
              .jumpToPage(0);
          BlocProvider.of<NavigationBarCubit>(context).changeIndex(0);

          return false;
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: CustomScrollView(
          controller: _scrollController,
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
      ),
    );
  }
}
