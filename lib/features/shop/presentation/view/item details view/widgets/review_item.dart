import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/assets_manager.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 5,
        ),
        Text(
          "Mina Emil",
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontFamily: AssetsManager.gilroyMedium,
                fontWeight: FontWeight.w500,
              ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          "It is Good. I enjoyed it. I love it. I love it. I love it.",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontFamily: AssetsManager.gilroyMedium,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 5.h,
        ),
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: const Divider(),
          ),
        )
      ],
    );
  }
}
