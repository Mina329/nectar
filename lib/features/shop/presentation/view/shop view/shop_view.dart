import 'package:flutter/material.dart';
import 'package:nectar/features/shop/presentation/view/shop%20view/widgets/shop_view_body.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});
  @override
  Widget build(BuildContext context) {
    return const ShopViewBody();
  }
}

enum SectionType { bestSelling, exclusiveOffer, groceries }
