import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeliveryAddressItem extends StatelessWidget {
  const DeliveryAddressItem({super.key, required this.onTap});

  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
    height: 100.h,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 10.h,
        ),
        Text(
          "El Sahel , Cairo GovernorateEl",
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          "5,5,5,Rateb",
          overflow: TextOverflow.ellipsis,
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
        )
      ],
    ),
      ),
    );
  }
}
