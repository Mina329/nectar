import 'package:flutter/material.dart';

class BannerItem extends StatelessWidget {
  const BannerItem({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(
          15,
        ),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.12,
        width: MediaQuery.of(context).size.width - 60,
        child: Image.asset(
          "assets/images/banner$index.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
