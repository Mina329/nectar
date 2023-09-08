import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/strings_manager.dart';
import 'about_list_view.dart';
import 'custom_account_list_items_app_bar.dart';

class AboutViewBody extends StatelessWidget {
  const AboutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        CustomAccountListItemsAppBar(
          title: StringsManager.about.tr(),
          backArrowOnPressed: () {
            GoRouter.of(context).pop();
          },
        ),
        const Divider(),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: CustomScrollView(
              slivers: [
                AboutListView(),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
