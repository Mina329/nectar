import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAccountListItemsAppBar extends StatelessWidget {
  const CustomAccountListItemsAppBar(
      {super.key, required this.title, required this.backArrowOnPressed});
  final String title;
  final VoidCallback backArrowOnPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105.h,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: 5.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: backArrowOnPressed,
                icon: const Icon(
                  Icons.arrow_back_ios_rounded,
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
