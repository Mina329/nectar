import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/strings_manager.dart';
import '../../../../../core/widgets/custom_elevated_btn.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200.h,
        decoration: BoxDecoration(
          color: Theme.of(context).hoverColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 20.h,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text(
                    StringsManager.orderId.tr(),
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(
                    width: 200.w,
                    child: Text(
                      "19Q965482A95DSA262",
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    StringsManager.totalPrice.tr(),
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    "\$50",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
              SizedBox(
                height: 50.h,
                child: CustomElevatedBtn(
                  onPressed: () {},
                  txt: StringsManager.downloadReceipt.tr(),
                  style: Theme.of(context).textTheme.labelLarge!,
                ),
              )
            ],
          ),
        ));
  }
}
