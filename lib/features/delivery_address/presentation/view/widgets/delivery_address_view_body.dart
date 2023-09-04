import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/widgets/custom_elevated_btn.dart';
import 'package:nectar/core/widgets/custom_loading_indicator.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/location_cubit/location_cubit.dart';
import '../../../../../core/utils/strings_manager.dart';
import '../../../../account/presentation/view/widgets/custom_account_list_items_app_bar.dart';

class DeliveryAddressViewBody extends StatelessWidget {
  const DeliveryAddressViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAccountListItemsAppBar(
            title: StringsManager.deliveryAddress.tr(),
          ),
          const Expanded(
            child: CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: [],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 25.h,
              left: 25.w,
              right: 25.w,
            ),
            child: SizedBox(
              width: double.infinity,
              height: 67.h,
              child: BlocListener<LocationCubit, LocationState>(
                listener: (context, state) {
                  if (state is LocationLoading) {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return const CustomLoadingIndicator();
                      },
                    );
                  } else if (state is LocationSuccess) {
                    GoRouter.of(context).pop();
                    GoRouter.of(context).push(AppRouter.kGoogleMapView);
                  } else if (state is LocationFailure) {
                    GoRouter.of(context).pop();
                    Fluttertoast.showToast(
                        msg:
                            "Please activate location services or check your internet connection");
                  }
                },
                child: CustomElevatedBtn(
                  onPressed: () async {
                    final capturedContext = context;
                    await BlocProvider.of<LocationCubit>(capturedContext)
                        .getCurrentLocation();
                  },
                  txt: StringsManager.addAddress.tr(),
                  style: Theme.of(context).textTheme.labelLarge!,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
