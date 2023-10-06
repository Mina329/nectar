import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileCardShimmer extends StatelessWidget {
  const ProfileCardShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 50.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: SizedBox(
              height: 60.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 32.w,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  SizedBox(
                    width: 250.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 100.w,
                              height: 20.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            const Icon(
                              Icons.create_outlined,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                          width: 150.w,
                          height: 20.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.settings_outlined,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          const Divider(),
        ],
      ),
    );
  }
}
