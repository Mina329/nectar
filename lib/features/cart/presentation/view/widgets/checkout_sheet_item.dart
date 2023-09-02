import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckoutSheetItem extends StatelessWidget {
  const CheckoutSheetItem({
    super.key,
    required this.title,
    required this.func,
    required this.onTap,
  });
  final String title;
  final Widget func;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontSize: 18.sp),
            ),
            GestureDetector(
              onTap: onTap,
              child: Row(
                children: [
                  func,
                  const Icon(
                    Icons.arrow_forward_ios,
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        SizedBox(
          width: 200.w,
          child: const Divider(),
        ),
      ],
    );
  }
}
