import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/color_manager.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

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
              height: 70.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.transparent,
                    radius: 32.w,
                    backgroundImage: const NetworkImage(
                        "https://avatars.githubusercontent.com/u/96777964?v=4"),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Mina Emil",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.create_outlined,
                              color: Theme.of(context).brightness ==
                                      Brightness.light
                                  ? ColorManager.green
                                  : ColorManager.whiteText,
                            ),
                          )
                        ],
                      ),
                      Text(
                        "minaemil329@gmail.com",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 16.sp,
                              fontFamily: AssetsManager.gilroyRegular,
                              fontWeight: FontWeight.w400,
                            ),
                      )
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.settings_outlined,
                    ),
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
