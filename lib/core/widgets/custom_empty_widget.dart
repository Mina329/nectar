import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/assets_manager.dart';
import '../utils/strings_manager.dart';

class CustomEmptyWidget extends StatelessWidget {
  const CustomEmptyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          AssetsManager.empty,
          width: 250.w,
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          StringsManager.empty.tr(),
          style: Theme.of(context).textTheme.bodyLarge,
        )
      ],
    );
  }
}
