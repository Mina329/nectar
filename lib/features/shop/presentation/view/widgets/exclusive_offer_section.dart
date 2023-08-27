import 'package:flutter/material.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/strings_manager.dart';
import '../../../../../core/utils/styles_manager.dart';
import 'grocery_item.dart';

class ExclusiveOfferSection extends StatelessWidget {
  const ExclusiveOfferSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                StringsManager.exlusiveOffer,
                style: StylesManager.gilroySemiBold24,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  StringsManager.seeAll,
                  style: StylesManager.gilroySemiBold16.copyWith(
                    color: ColorManager.primaryColorLight,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 255,
            child: ListView.builder(
              itemCount: 10,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.only(right: 15),
                child: GroceryItem(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
