import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AuthAppBar extends StatelessWidget {
  const AuthAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 105.h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: InkWell(
                onTap: () {
                  FocusScope.of(context).unfocus();
                  Future.delayed(const Duration(seconds: 1));
                  GoRouter.of(context).pop();
                },
                child: const Icon(
                  Icons.arrow_back_ios_rounded,
                ),
              ),
            ),
            const SizedBox()
          ],
        ),
      ),
    );
  }
}
