import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles_manager.dart';
import '../../../../../main.dart';

class CustomShopAppBar extends StatelessWidget {
  const CustomShopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          SvgPicture.asset("assets/images/logo_colored.svg"),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_pin,
                color: light ? ColorManager.darkShadeTextColor : Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Cairo, Egypt",
                style: StylesManager.gilroySemiBold18.copyWith(
                  color: light ? ColorManager.darkShadeTextColor : Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
