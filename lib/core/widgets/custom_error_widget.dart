
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../utils/assets_manager.dart';
import '../utils/strings_manager.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.all(10.w),
            child: IconButton(
              icon: Icon(
                Icons.close,
                size: 26.sp,
              ),
              onPressed: () {
                GoRouter.of(context).pop();
              },
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 50.h, left: 50.w, right: 50.w),
          child: Column(
            children: [
              Image.asset(
                AssetsManager.error,
                width: 200.w,
                height: 200.h,
              ),
              Text(
                StringsManager.error.tr(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
