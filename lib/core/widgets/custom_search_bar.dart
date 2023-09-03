import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import '../utils/color_manager.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: TextField(
        decoration: InputDecoration(
          hintText: StringsManager.searchStore.tr(),
          alignLabelWithHint: true,
          hintStyle: Theme.of(context).textTheme.bodySmall,
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Icon(
              Icons.search,
              size: 24.sp,
              color: Theme.of(context).brightness == Brightness.light
                  ? ColorManager.darkBlue
                  : ColorManager.grayOpacity,
            ),
          ),
          filled: true,
          fillColor: Theme.of(context).hoverColor,
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
