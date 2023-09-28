import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../data/models/category_model/category_model.dart';
import '../../../view model/category_items_cubit/category_items_cubit.dart';
import 'custom_category_app_bar.dart';
import 'grocery_item_grid_view.dart';

class CategoryDetailsViewBody extends StatelessWidget {
  const CategoryDetailsViewBody({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        color: ColorManager.green,
        edgeOffset: 70,
        onRefresh: () async {
          BlocProvider.of<CategoryItemsCubit>(context)
              .fetchCategoryItems(category.id!);
          return Future.delayed(const Duration(seconds: 1));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomCategoryAppBar(title: category.name),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: CustomScrollView(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    const GroceryItemGridView(),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: 20.h,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
