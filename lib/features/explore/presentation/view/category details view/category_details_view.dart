import 'package:flutter/material.dart';
import 'package:nectar/features/explore/presentation/view/category%20details%20view/widgets/category_details_view_body.dart';

import '../../../data/models/category_model/category_model.dart';

class CategoryDetailsView extends StatelessWidget {
  const CategoryDetailsView({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return CategoryDetailsViewBody(
      category: category,
    );
  }
}
