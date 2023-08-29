import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/core/utils/assets_manager.dart';

class CustomShopAppBar extends StatelessWidget {
  const CustomShopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          SizedBox(
            height: 60.h,
          ),
          SvgPicture.asset(
            Theme.of(context).brightness == Brightness.light
                ? AssetsManager.carrotImgLIGHT
                : AssetsManager.carrotImgDARK,
            height: 31.h,
            width: 27.w,
          ),
          SizedBox(
            height: 7.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_pin,
                color: Theme.of(context).textTheme.bodyLarge!.color,
              ),
              SizedBox(
                width: 7.w,
              ),
              Text("Cairo, Egypt",
                  style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
