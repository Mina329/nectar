import 'package:flutter/material.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/strings_manager.dart';
import '../../../../../core/utils/styles_manager.dart';

class CategoryGroceriesSectionItem extends StatelessWidget {
  const CategoryGroceriesSectionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: ColorManager.categoryOne.withOpacity(0.15)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 17),
            child: Image.asset("assets/images/category_one.png"),
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            StringsManager.pulses,
            style: StylesManager.gilroySemiBold20,
          )
        ],
      ),
    );
  }
}
