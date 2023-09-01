import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import '../../../../../core/widgets/custom_elevated_btn.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 25.h,
      left: 25.w,
      right: 25.w,
      child: SizedBox(
        width: 364.w,
        height: 67.h,
        child: CustomElevatedBtn(
            onPressed: () {},
            txt: StringsManager.goToCheckout.tr(),
            style: Theme.of(context).textTheme.labelLarge!),
      ),
    );
  }
}
