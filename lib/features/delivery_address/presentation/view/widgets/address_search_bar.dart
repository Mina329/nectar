import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/color_manager.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/location_bloc/location_bloc.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/search_address_cubit/search_address_cubit.dart';

class AddressSearchBar extends StatelessWidget {
  AddressSearchBar({super.key});
  final fieldText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105.h,
      width: 414.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              GoRouter.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_ios_rounded),
          ),
          SizedBox(
            height: 50.h,
            width: 330.w,
            child: TextField(
              onChanged: (value) {
                BlocProvider.of<SearchAddressCubit>(context).fetchSuggestions(
                    BlocProvider.of<LocationBloc>(context)
                        .currentLocation
                        .latitude
                        .toString(),
                    BlocProvider.of<LocationBloc>(context)
                        .currentLocation
                        .longitude
                        .toString(),
                    value);
              },
              controller: fieldText,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontSize: 14.sp),
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(  
                suffixIcon: GestureDetector(
                  onTap: () {
                    fieldText.clear();
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
                ),
                hintText: StringsManager.search.tr(),
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
          )
        ],
      ),
    );
  }
}
