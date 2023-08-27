
import 'package:flutter/material.dart';

import 'banner_item.dart';

class BannerListView extends StatelessWidget {
  const BannerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: SizedBox(
      height: MediaQuery.of(context).size.height * 0.12,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(
            right: 10,
          ),
          child: BannerItem(index: index),
        ),
      ),
    ));
  }
}
