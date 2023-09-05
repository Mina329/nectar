import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/color_manager.dart';

class GoogleMapAppBar extends StatelessWidget {
  const GoogleMapAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.green,
      height: 105.h,
      width: double.infinity,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: 15.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_rounded,
                  color: ColorManager.whiteText,
                ),
              ),
              Text(
                "Location",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: ColorManager.whiteText),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: ColorManager.whiteText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
