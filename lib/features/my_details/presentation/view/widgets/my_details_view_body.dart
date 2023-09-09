import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/widgets/custom_elevated_btn.dart';

import '../../../../../core/utils/strings_manager.dart';
import '../../../../account/presentation/view/widgets/custom_account_list_items_app_bar.dart';
import 'my_details_form.dart';

class MyDetailsViewBody extends StatelessWidget {
  MyDetailsViewBody({super.key});
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAccountListItemsAppBar(
            title: StringsManager.myDetails.tr(),
            backArrowOnPressed: () {
              GoRouter.of(context).pop();
            },
          ),
          const Divider(),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
              child: ListView(
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            children: [
              MyDetailsForm(formKey: formKey),
            ],
          )),
          Padding(
            padding: EdgeInsets.only(
              bottom: 25.h,
              left: 25.w,
              right: 25.w,
            ),
            child: SizedBox(
              width: double.infinity,
              height: 67.h,
              child: CustomElevatedBtn(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      // Add
                      GoRouter.of(context).pop();
                    }
                  },
                  txt: StringsManager.save.tr(),
                  style: Theme.of(context).textTheme.labelLarge!),
            ),
          )
        ],
      ),
    );
  }
}
