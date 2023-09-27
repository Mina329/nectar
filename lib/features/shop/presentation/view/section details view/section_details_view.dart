import 'package:flutter/material.dart';
import 'package:nectar/features/shop/presentation/view/section%20details%20view/widgets/section_details_view_body.dart';

import '../../../../explore/data/models/category_item_model/category_item_model.dart';

class SectionDetailsView extends StatelessWidget {
  const SectionDetailsView(
      {super.key, required this.name, required this.items});
  final String name;
  final List<CategoryItemModel> items;
  @override
  Widget build(BuildContext context) {
    return SectionDetailsViewBody(
      name: name,
      items: items,
    );
  }
}
