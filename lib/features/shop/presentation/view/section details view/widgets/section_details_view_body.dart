import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/features/shop/presentation/view/section%20details%20view/widgets/section_details_grid_view.dart';
import '../../../../../explore/data/models/category_item_model/category_item_model.dart';
import '../../../../../explore/presentation/view/category details view/widgets/custom_category_app_bar.dart';

class SectionDetailsViewBody extends StatelessWidget {
  const SectionDetailsViewBody(
      {super.key, required this.name, required this.items});
  final String name;
  final List<CategoryItemModel> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomCategoryAppBar(title: name),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: CustomScrollView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SectionDetailsGridView(
                    items: items,
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
