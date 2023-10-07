import 'package:flutter/material.dart';
import 'package:nectar/features/delivery_address/presentation/view/delivery%20address%20view/widgets/delivery_address_view_body.dart';

import '../../../../account/data/models/account_model/account_model/account_model.dart';

class DeliveryAddressView extends StatelessWidget {
  const DeliveryAddressView({super.key, required this.accountModel});
  final AccountModel accountModel;
  @override
  Widget build(BuildContext context) {
    return DeliveryAddressViewBody(
      account: accountModel,
    );
  }
}
