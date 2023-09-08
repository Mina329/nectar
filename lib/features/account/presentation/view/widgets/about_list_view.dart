import 'package:flutter/material.dart';

import 'about_item.dart';

class AboutListView extends StatelessWidget {
  AboutListView({super.key});

  final List<String> imageUrls = [
    "https://github.com/Mina329/attendo/blob/master/images/author2.png?raw=true",
    "https://github.com/Mina329/attendo/blob/master/images/author1.png?raw=true",
  ];
  final List<String> names = [
    "Mina Emil",
    "Mina Saad",
  ];
  final List<String> roles = [
    "Flutter Developer",
    "BackEnd Developer",
  ];
  final List<String> emails = [
    "mina.emil.fakhry@outlook.com",
    "minasaad-47@outlook.com",
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          (context, index) => AboutItem(
                imageUrl: imageUrls[index],
                name: names[index],
                email: emails[index],
                role: roles[index],
              ),
          childCount: imageUrls.length),
    );
  }
}
