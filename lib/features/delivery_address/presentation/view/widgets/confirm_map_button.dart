import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/cache/cache_helper.dart';
import 'package:nectar/core/cache/cache_keys_values.dart';
import 'package:nectar/core/utils/strings_manager.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widgets/custom_elevated_btn.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import '../../view_model/location_bloc/location_bloc.dart';

class ConfirmMapButton extends StatelessWidget {
  const ConfirmMapButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 25.h,
      left: 25.w,
      right: 25.w,
      child: SizedBox(
        width: 200.w,
        height: 67.h,
        child: BlocListener<LocationBloc, LocationState>(
          listener: (context, state) {
            if (state is PlacemarkLoading) {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return const CustomLoadingIndicator();
                },
              );
            } else if (state is PlacemarkSuccess) {
              final locationBloc = BlocProvider.of<LocationBloc>(context);

              GoRouter.of(context).pushReplacement(
                  AppRouter.kAddressConfirmView,
                  extra: locationBloc);
            } else if (state is PlacemarkFailure) {
              GoRouter.of(context).pop();
              Fluttertoast.showToast(msg: state.errMessage);
            }
          },
          child: CustomElevatedBtn(
            onPressed: () {
              BlocProvider.of<LocationBloc>(context).add(
                GetPlacemark(
                    BlocProvider.of<LocationBloc>(context)
                        .currentLocation
                        .latitude,
                    BlocProvider.of<LocationBloc>(context)
                        .currentLocation
                        .longitude,
                    CacheData.getData(key: CacheKeys.kLANGUAGE) ==
                            CacheValues.ARABIC
                        ? "ar"
                        : "en"),
              );
            },
            txt: StringsManager.confirm.tr(),
            style: Theme.of(context).textTheme.labelLarge!,
          ),
        ),
      ),
    );
  }
}
