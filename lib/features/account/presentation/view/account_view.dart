import 'package:flutter/material.dart';
import 'package:nectar/features/account/presentation/view/widgets/account_view_body.dart';

class AccountView extends StatefulWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  AccountViewState createState() => AccountViewState();
}

class AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    return const AccountViewBody();
  }
}
