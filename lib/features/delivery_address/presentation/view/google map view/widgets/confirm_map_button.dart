import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/cache/cache_helper.dart';
import 'package:nectar/core/cache/cache_keys_values.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/delivery_address_cubit/delivery_address_cubit.dart';

import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/widgets/custom_elevated_btn.dart';
import '../../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../../../core/widgets/custom_toast_widget.dart';
import '../../../../../account/presentation/view model/account_info_cubit/account_info_cubit.dart';
import '../../../../data/models/address_delivery_navigation_model/address_delivery_navigation_model.dart';
import '../../../view_model/address_cubit/address_cubit.dart';
import '../../../view_model/location_bloc/location_bloc.dart';

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
              CustomLoadingIndicator.buildLoadingIndicator(context);
            } else if (state is PlacemarkSuccess) {
              GoRouter.of(context)
                  .pushReplacement(AppRouter.kAddressConfirmView,
                      extra: AddressDeliveryNavigationModel(
                        BlocProvider.of<LocationBloc>(context),
                        BlocProvider.of<AddressCubit>(context),
                        BlocProvider.of<AccountInfoCubit>(context),
                        BlocProvider.of<DeliveryAddressCubit>(context),
                      ));
            } else if (state is PlacemarkFailure) {
              GoRouter.of(context).pop();
              CustomToastWidget.buildCustomToast(
                  context, state.errMessage, ToastType.failure, 200.h);
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
