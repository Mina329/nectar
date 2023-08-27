import 'package:flutter/material.dart';
import 'package:restart_app/restart_app.dart';

import '../../../../core/cache/cache_helper.dart';

class AccountView extends StatefulWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  _AccountViewState createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  bool switchValue = !CacheData.getData(key: "light");

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Switch(
        value: switchValue,
        onChanged: (value) {
          setState(() async {
            switchValue = value;
            await CacheData.setData(key: "light", value: !value);
            print(value);

            Restart.restartApp();
          });
        },
      ),
    );
  }
}
