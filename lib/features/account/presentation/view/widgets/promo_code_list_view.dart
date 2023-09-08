import 'package:flutter/material.dart';
import 'package:nectar/features/account/presentation/view/widgets/promo_code_item.dart';

class PromoCodeListView extends StatelessWidget {
  const PromoCodeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => const PromoCodeItem(),
        childCount: 13,
        
      ),
    );
  }
}
