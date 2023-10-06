import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutItem extends StatelessWidget {
  const AboutItem(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.email,
      required this.role});
  final String imageUrl;
  final String name;
  final String email;
  final String role;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 40.w,
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  role,
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  email,
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            )
          ],
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
    );
  }
}
