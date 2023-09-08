import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromoCodeItem extends StatelessWidget {
  const PromoCodeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 10.h,
        ),
        Text(
          "EJDHkEIOSF",
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          "Up to 50% discount",
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        SizedBox(
          height: 10.h,
        ),
        Center(
          child: SizedBox(
            width: 200.w,
            child: const Divider(),
          ),
        ),
      ],
    );
  }
}
