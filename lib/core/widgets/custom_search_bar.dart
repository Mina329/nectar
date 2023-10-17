import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/features/explore/presentation/view%20model/categories_cubit/categories_cubit.dart';
import '../../features/shop/presentation/view model/best_selling_cubit/best_selling_cubit.dart';
import '../../features/shop/presentation/view model/exclusive_offers_cubit/exclusive_offers_cubit.dart';
import '../../features/shop/presentation/view model/groceries_section_cubit/groceries_section_cubit.dart';
import '../utils/color_manager.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar(
      {super.key, required this.onChanged, required this.flag});
  final Function(String)? onChanged;
  final bool flag;

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  void initState() {
    super.initState();
    fieldText.addListener(() {
      setState(() {
        showSuffixIcon = fieldText.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    fieldText.dispose();
    super.dispose();
  }

  final fieldText = TextEditingController();
  bool showSuffixIcon = false;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: TextField(
        controller: fieldText,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          suffixIcon: showSuffixIcon
              ? InkWell(
                  onTap: () {
                    fieldText.clear();
                    setState(() {
                      showSuffixIcon = false;
                    });
                    if (widget.flag) {
                      BlocProvider.of<CategoriesCubit>(context)
                          .fetchCategories();
                      BlocProvider.of<CategoriesCubit>(context).page = 1;
                      BlocProvider.of<CategoriesCubit>(context).isFirst = true;
                    } else {
                      BlocProvider.of<ExclusiveOffersCubit>(context)
                          .getExclusiveOffersItems(filter: null);
                      BlocProvider.of<GroceriesSectionCubit>(context)
                          .getAllItems(filter: null);
                      BlocProvider.of<BestSellingCubit>(context)
                          .getBestSellingItems(filter: null);
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Icon(
                      Icons.close,
                      size: 24.sp,
                      color: Theme.of(context).brightness == Brightness.light
                          ? ColorManager.darkBlue
                          : ColorManager.grayOpacity,
                    ),
                  ),
                )
              : null,
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
