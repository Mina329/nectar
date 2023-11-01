import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/strings_manager.dart';

import '../../../../data/models/address_model/address_model.dart';

// ignore: must_be_immutable
class DeliveryAddressItem extends StatelessWidget {
  const DeliveryAddressItem({super.key, required this.address});
  final AddressModel address;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 205.h,
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
    );
  }
}
