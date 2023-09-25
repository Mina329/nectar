import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_category_app_bar.dart';
import 'grocery_item_grid_view.dart';

class CategoryDetailsViewBody extends StatelessWidget {
  const CategoryDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const CustomCategoryAppBar(),
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
        ],
      ),
    );
  }
}
