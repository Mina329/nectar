import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/color_manager.dart';

import '../../../../../core/utils/strings_manager.dart';
import '../../../../account/presentation/view/widgets/custom_account_list_items_app_bar.dart';

class PaymentMethodViewBody extends StatefulWidget {
  const PaymentMethodViewBody({Key? key}) : super(key: key);

  @override
  State<PaymentMethodViewBody> createState() => _PaymentMethodViewBodyState();
}

class _PaymentMethodViewBodyState extends State<PaymentMethodViewBody> {
  final List<String> options = [
    StringsManager.cash.tr(),
    StringsManager.visa.tr(),
    StringsManager.mobileWallet.tr(),
  ];

  String? selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAccountListItemsAppBar(
            title: StringsManager.paymentMethod.tr(),
            backArrowOnPressed: () {
              GoRouter.of(context).pop();
            },
          ),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: options.map((option) {
                return Column(
                  children: [
                    RadioListTile(
                      activeColor: ColorManager.green,
                      value: option,
                      title: Text(
                        option,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      groupValue: selectedPaymentMethod,
                      onChanged: (value) {
                        setState(() {
                          selectedPaymentMethod = value;
                        });
                      },
                    ),
                    SizedBox(
                      width: 200.w,
                      child: const Divider(),
                    )
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
