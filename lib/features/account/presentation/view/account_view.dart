import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/cache/cache_keys_values.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/features/account/presentation/view/widgets/account_view_body.dart';

import '../../../../core/cache/cache_helper.dart';

class AccountView extends StatefulWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  AccountViewState createState() => AccountViewState();
}

class AccountViewState extends State<AccountView> {
  bool switch1Value =
      CacheData.getData(key: CacheKeys.kDARKMODE) == CacheValues.LIGHT
          ? false
          : true;
  bool switch2Value =
      CacheData.getData(key: CacheKeys.kLANGUAGE) == CacheValues.ENGLISH
          ? false
          : true;

  @override
  Widget build(BuildContext context) {
    return true
        ? const AccountViewBody()
        : Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              Center(
                child: Switch(
                  value: switch1Value,
                  onChanged: (value) async {
                    await CacheData.setData(
                      key: CacheKeys.kDARKMODE,
                      value:
                          value == true ? CacheValues.DARK : CacheValues.LIGHT,
                    );
                    setState(() {
                      switch1Value = value;
                      Phoenix.rebirth(context);
                      GoRouter.of(context).go(AppRouter.kSplashView);
                    });
                  },
                ),
              ),
              Center(
                child: Switch(
                  value: switch2Value,
                  onChanged: (value) async {
                    await CacheData.setData(
                      key: CacheKeys.kLANGUAGE,
                      value: value == true
                          ? CacheValues.ARABIC
                          : CacheValues.ENGLISH,
                    );
                    setState(() {
                      switch2Value = value;
                      Phoenix.rebirth(context);
                      GoRouter.of(context).go(AppRouter.kSplashView);
                    });
                  },
                ),
              ),
            ],
          );
  }
}
