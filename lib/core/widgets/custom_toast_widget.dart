import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomToastWidget extends StatelessWidget {
  const CustomToastWidget({
    super.key,
    required this.title,
    required this.description,
    required this.type,
  });
  final String title;
  final String description;
  final ToastType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      height: 90.h,
      decoration: BoxDecoration(
        color: type == ToastType.failure ? Colors.red : Colors.green,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            20,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            type == ToastType.failure
                ? Icons.error
                : FontAwesomeIcons.circleCheck,
            color: Colors.white,
            size: 30.sp,
          ),
          SizedBox(
            width: 15.w,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.white),
                ),
                Text(
                  description,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: Colors.white),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

enum ToastType {
  success,
  failure,
}
/*
ScaffoldMessenger.of(context)
              ..clearSnackBars()
              ..showSnackBar(
                const SnackBar(
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  content: CustomToastWidget(
                    title: "ops",
                    description: "there is an error",
                    type: ToastType.success,
                  ),
                ),
              );
*/