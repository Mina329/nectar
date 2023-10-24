import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:nectar/core/utils/strings_manager.dart';

import '../utils/assets_manager.dart';
import '../utils/color_manager.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      child: Lottie.asset(
        AssetsManager.loading,
        width: 50.w,
        height: 100.h,
      ),
    );
  }

  static buildLoadingIndicator(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const CustomLoadingIndicator();
      },
    );
  }
}

class CustomCircularIndicator extends StatelessWidget {
  const CustomCircularIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      AssetsManager.loading,
      width: 50.w,
      height: 100.h,
    );
  }
}

class CustomPhoneConfirmationDialog extends StatelessWidget {
  final VoidCallback onConfirm;
  final String phoneNumber;

  const CustomPhoneConfirmationDialog(
      {super.key, required this.onConfirm, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(StringsManager.numberConfirm.tr() + phoneNumber),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            StringsManager.cancel.tr(),
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).brightness == Brightness.light
                      ? ColorManager.green
                      : ColorManager.greySmall,
                ),
          ),
        ),
        TextButton(
          onPressed: () {
            onConfirm();
            Navigator.of(context).pop();
          },
          child: Text(
            StringsManager.confirm.tr(),
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).brightness == Brightness.light
                      ? ColorManager.green
                      : ColorManager.greySmall,
                ),
          ),
        ),
      ],
    );
  }

  static buildConfirmationDialog(
      BuildContext context, VoidCallback onConfirm, String phoneNumber) {
    return showDialog(
      context: context,
      builder: (context) {
        return CustomPhoneConfirmationDialog(
          onConfirm: onConfirm,
          phoneNumber: phoneNumber,
        );
      },
    );
  }
}
