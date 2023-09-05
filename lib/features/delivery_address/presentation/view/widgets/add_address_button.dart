import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/strings_manager.dart';
import '../../../../../core/widgets/custom_elevated_btn.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import '../../view_model/location_bloc/location_bloc.dart';

class AddAddressButton extends StatelessWidget {
  const AddAddressButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 25.h,
        left: 25.w,
        right: 25.w,
      ),
      child: SizedBox(
        width: double.infinity,
        height: 67.h,
        child: BlocListener<LocationBloc, LocationState>(
          listener: (context, state) {
            if (state is GetMyCurrentLocationLoading) {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return const CustomLoadingIndicator();
                },
              );
            } else if (state is GetMyCurrentLocationSuccess) {
              final locationBloc = BlocProvider.of<LocationBloc>(context);

              GoRouter.of(context).pop();
              GoRouter.of(context)
                  .push(AppRouter.kGoogleMapView, extra: locationBloc);
            } else if (state is GetMyCurrentLocationFailure) {
              GoRouter.of(context).pop();
              Fluttertoast.showToast(msg: state.errMessage);
            }
          },
          child: CustomElevatedBtn(
            onPressed: () {
              BlocProvider.of<LocationBloc>(context)
                  .add(GetMyCurrentLocation());
            },
            txt: StringsManager.addAddress.tr(),
            style: Theme.of(context).textTheme.labelLarge!,
          ),
        ),
      ),
    );
  }
}
