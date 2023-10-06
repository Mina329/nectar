import 'package:flutter/material.dart';
import 'package:nectar/features/account/data/models/account_model/account_model/account_model.dart';
import 'package:nectar/features/my_details/presentation/view/widgets/my_details_view_body.dart';

class MyDetailsView extends StatelessWidget {
  const MyDetailsView({super.key, required this.accountModel});
  final AccountModel accountModel;
  @override
  Widget build(BuildContext context) {
    return MyDetailsViewBody(
      account: accountModel,
    );
  }
}
