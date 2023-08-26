import 'package:flutter/material.dart';

import '../utils/color_manager.dart';
import '../utils/styles_manager.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search Store",
          hintStyle: StylesManager.gilroySemiBold14,
          prefixIcon: const Icon(
            Icons.search,
            color: ColorManager.textColorLight,
          ),
          filled: true,
          fillColor: ColorManager.searchBarColor,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}
