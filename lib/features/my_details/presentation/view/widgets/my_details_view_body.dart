import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/widgets/custom_elevated_btn.dart';

import '../../../../../core/utils/strings_manager.dart';
import '../../../../account/presentation/view/widgets/custom_account_list_items_app_bar.dart';
import 'my_details_form.dart';

class MyDetailsViewBody extends StatelessWidget {
  const MyDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      body: Column(
        children: [
          CustomAccountListItemsAppBar(
            title: StringsManager.myDetails.tr(),
            backArrowOnPressed: () {
              GoRouter.of(context).pop();
            },
          ),
          Expanded(
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 20.h,
                  ),
                ),
                MyDetailsForm(formKey: formKey),
              ],
            ),
          ),
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
