import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/location_bloc/location_bloc.dart';

import '../../../../../core/utils/color_manager.dart';

class GoogleMapAppBar extends StatelessWidget {
  const GoogleMapAppBar({super.key, required this.previousLocation});
  final LatLng previousLocation;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.green,
      height: 105.h,
      width: double.infinity,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: 15.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  if (BlocProvider.of<LocationBloc>(context).fromChange) {
                    final locationBloc = BlocProvider.of<LocationBloc>(context);
                    BlocProvider.of<LocationBloc>(context).currentLocation =
                        previousLocation;
                    BlocProvider.of<LocationBloc>(context).fromChange = false;
                    GoRouter.of(context).pushReplacement(
                        AppRouter.kAddressConfirmView,
                        extra: locationBloc);
                  } else {
                    BlocProvider.of<LocationBloc>(context).add(MapVisibility());
                    GoRouter.of(context).pop();
                  }
                },
                icon: const Icon(
                  Icons.arrow_back_ios_rounded,
                  color: ColorManager.whiteText,
                ),
              ),
              Text(
                StringsManager.myLocation.tr(),
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: ColorManager.whiteText),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: ColorManager.whiteText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
