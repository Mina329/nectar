import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/core/utils/strings_manager.dart';

class CustomToastWidget extends StatelessWidget {
  const CustomToastWidget({
    super.key,
    required this.description,
    required this.type,
  });
  final String description;
  final ToastType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      height: 110.h,
      decoration: BoxDecoration(
        color: type == ToastType.failure ? Colors.red.withOpacity(0.7) : Colors.green.withOpacity(0.7),
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
                  type == ToastType.failure
                      ? StringsManager.error.tr()
                      : StringsManager.success.tr(),
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
WidgetsBinding.instance.addPostFrameCallback((_) {
                    ScaffoldMessenger.of(context)
                      ..clearSnackBars()
                      ..showSnackBar(
                        SnackBar(
                          behavior: SnackBarBehavior.floating,
                          dismissDirection: DismissDirection.none,
                          duration: const Duration(seconds: 1),
                          margin: EdgeInsets.only(
                              bottom:
                                  MediaQuery.of(context).size.height - 150.h,
                              right: 20,
                              left: 20),
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          content: CustomToastWidget(
                            description: state.succeesMessage,
                            type: ToastType.success,
                          ),
                        ),
                      );
                  });
*/