import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/location_bloc/location_bloc.dart';

import '../../../../../../core/cache/cache_helper.dart';
import '../../../../../../core/cache/cache_keys_values.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../account/presentation/view model/account_info_cubit/account_info_cubit.dart';
import '../../../../data/models/address_delivery_navigation_model/address_delivery_navigation_model.dart';
import '../../../view_model/address_cubit/address_cubit.dart';
import '../../../view_model/delivery_address_cubit/delivery_address_cubit.dart';

class AreaCard extends StatelessWidget {
  const AreaCard({super.key, required this.placeName});
  final String placeName;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: CacheData.getData(key: CacheKeys.kDARKMODE) ==
                        CacheValues.DARK
                    ? ColorManager.borderColorDARK
                    : ColorManager.borderColorLIGHT,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 10.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        StringsManager.area.tr(),
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      SizedBox(
                        width: 250.w,
                        child: Text(
                          placeName,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      )
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      BlocProvider.of<LocationBloc>(context).fromChange = true;
                      GoRouter.of(context)
                          .pushReplacement(AppRouter.kGoogleMapView,
                              extra: AddressDeliveryNavigationModel(
                                BlocProvider.of<LocationBloc>(context),
                                BlocProvider.of<AddressCubit>(context),
                                BlocProvider.of<AccountInfoCubit>(context),
                                BlocProvider.of<DeliveryAddressCubit>(context),
                              ));
                    },
                    child: Text(
                      StringsManager.change.tr(),
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: ColorManager.green),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
