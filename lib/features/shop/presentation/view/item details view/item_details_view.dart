import 'package:flutter/material.dart';
import 'package:nectar/features/shop/presentation/view/item%20details%20view/widgets/item_details_view_body.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({super.key, required this.fromFavourite});
  final bool fromFavourite;
  @override
  Widget build(BuildContext context) {
    return ItemDetailsViewBody(fromFavourite: fromFavourite);
  }
}
