import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomCategoryAppBar extends StatelessWidget {
  const CustomCategoryAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105.h,
      width: double.infinity,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: 15.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_rounded,
                ),
              ),
              Text(
                "Beverages",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.filter_list_alt,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
