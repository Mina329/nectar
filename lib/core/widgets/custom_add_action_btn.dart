import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/color_manager.dart';

class CustomAddActionButton extends StatelessWidget {
  const CustomAddActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: null,
      onPressed: () {},
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? ColorManager.greenPrimary
          : ColorManager.greyLarge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Icon(
        Icons.add,
        size: 24.sp,
        color: Theme.of(context).brightness == Brightness.light
            ? ColorManager.whiteText
            : ColorManager.grayOpacity,
      ),
    );
  }
}
