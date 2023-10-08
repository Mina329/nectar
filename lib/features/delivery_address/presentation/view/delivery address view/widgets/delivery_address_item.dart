import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/features/account/presentation/view%20model/account_info_cubit/account_info_cubit.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/address_cubit/address_cubit.dart';

import '../../../../../../core/widgets/custom_toast_widget.dart';
import '../../../../data/models/address_model/address_model.dart';

// ignore: must_be_immutable
class DeliveryAddressItem extends StatelessWidget {
  DeliveryAddressItem({super.key, required this.address});
  final AddressModel address;
  SlidableController? controller;
  @override
  Widget build(BuildContext context) {
    return BlocListener<AddressCubit, AddressState>(
      listener: (context, state) {
        if (state is AddressLoading) {
        } else if (state is DeleteAddressFailure) {
          CustomToastWidget.buildCustomToast(
              context, state.errMessage, ToastType.failure, 200.h);
        } else if (state is DeleteAddressSuccess) {
          controller?.dismiss(
            curve: Curves.easeOut,
            ResizeRequest(const Duration(milliseconds: 200), () => {}),
            duration: const Duration(milliseconds: 200),
          );
          BlocProvider.of<AccountInfoCubit>(context).getUserProfile();
          CustomToastWidget.buildCustomToast(
              context, state.successMessage, ToastType.success, 200.h);
        }
      },
      child: Slidable(
        key: UniqueKey(),
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          extentRatio: 0.3,
          children: [
            SlidableAction(
              autoClose: false,
              onPressed: (context) {
                controller = Slidable.of(context);
                BlocProvider.of<AddressCubit>(context)
                    .deleteAddress(address.id!);
              },
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              icon: Icons.delete_forever,
              label: StringsManager.delete.tr(),
            ),
          ],
        ),
        child: SizedBox(
          height: 105.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Text(
                address.gorvernorate == null
                    ? StringsManager.unavailable.tr()
                    : "${address.district ?? ''} ${address.district != null ? ',' : ''} ${address.gorvernorate}",
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(
                height: 10.h,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (address.street != null)
                        Text(
                          "${StringsManager.street.tr()} : ${address.street}",
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      if (address.floor != null)
                        Text(
                          "${StringsManager.floor.tr()} : ${address.floor}",
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (address.buildingNumber != null)
                        Text(
                          "${StringsManager.buildingNumber.tr()} : ${address.buildingNumber}",
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      if (address.appartmentNumber != null)
                        Text(
                          "${StringsManager.appartmentNumber.tr()} : ${address.appartmentNumber}",
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: SizedBox(
                  width: 200.w,
                  child: const Divider(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
