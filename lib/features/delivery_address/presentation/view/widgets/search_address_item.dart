import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchAddressItem extends StatelessWidget {
  const SearchAddressItem(
      {super.key,
      required this.distance,
      required this.title,
      required this.description});
  final String distance;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.red,
                  size: 26.sp,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  distance,
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            ),
            SizedBox(
              width: 20.w,
            ),
            SizedBox(
              width: 250.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(
          width: 200.w,
          child: const Divider(),
        )
      ],
    );
  }
}
