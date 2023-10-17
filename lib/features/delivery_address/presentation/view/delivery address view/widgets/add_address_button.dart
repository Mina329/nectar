import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/features/delivery_address/data/models/address_delivery_navigation_model/address_delivery_navigation_model.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/address_cubit/address_cubit.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/delivery_address_cubit/delivery_address_cubit.dart';

import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/utils/strings_manager.dart';
import '../../../../../../core/widgets/custom_elevated_btn.dart';
import '../../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../../../core/widgets/custom_toast_widget.dart';
import '../../../../../account/presentation/view model/account_info_cubit/account_info_cubit.dart';
import '../../../view_model/location_bloc/location_bloc.dart';

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
              CustomLoadingIndicator.buildLoadingIndicator(context);
            } else if (state is GetMyCurrentLocationSuccess) {
              GoRouter.of(context).pop();
              GoRouter.of(context).push(
                AppRouter.kGoogleMapView,
                extra: AddressDeliveryNavigationModel(
                  BlocProvider.of<LocationBloc>(context),
                  BlocProvider.of<AddressCubit>(context),
                  BlocProvider.of<AccountInfoCubit>(context),
                  BlocProvider.of<DeliveryAddressCubit>(context),
                ),
              );
            } else if (state is GetMyCurrentLocationFailure) {
              GoRouter.of(context).pop();
              CustomToastWidget.buildCustomToast(context,
                            state.errMessage, ToastType.failure, 200.h);
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
