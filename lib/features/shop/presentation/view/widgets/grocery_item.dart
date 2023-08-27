import 'package:flutter/material.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles_manager.dart';
import '../../../../../core/widgets/custom_add_action_btn.dart';

class GroceryItem extends StatelessWidget {
  const GroceryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 255,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: ColorManager.borderColorLight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("assets/images/banana.png"),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
            ),
            child: Text(
              "Organic Bananas",
              style: StylesManager.gilroyBold16,
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
            ),
            child: Text(
              "7pcs, Priceg",
              style: StylesManager.gilroyMedium14.copyWith(
                color: ColorManager.lightShadeTextColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$4.99",
                  style: StylesManager.gilroySemiBold18.copyWith(
                    color: ColorManager.textColorLight,
                  ),
                ),
                const CustomAddActionButton()
              ],
            ),
          )
        ],
      ),
    );
  }
}
