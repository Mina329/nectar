import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/assets_manager.dart';
import '../../../../../../core/widgets/custom_loading_indicator.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({
    super.key,
    required this.name,
    this.image,
    this.review,
  });
  final String name;
  final String? image;
  final String? review;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 50.w,
          height: 50.h,
          child: ClipOval(
            child: image == null
                ? Image.asset(AssetsManager.errorAlt)
                : CachedNetworkImage(
                    imageUrl: image!,
                    errorWidget: (context, error, stackTrace) =>
                        Image.asset(AssetsManager.errorAlt),
                    placeholder: (context, url) =>
                        const CustomCircularIndicator(),
                  ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5,
              ),
              Text(
                name,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontFamily: AssetsManager.gilroyMedium,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                review!,
                softWrap: true,
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
          ),
        ),
      ],
    );
  }
}
