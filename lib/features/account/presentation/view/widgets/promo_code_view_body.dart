import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/features/account/presentation/view/widgets/promo_code_list_view.dart';
import '../../../../../core/utils/strings_manager.dart';
import 'custom_account_list_items_app_bar.dart';

class PromoCodeViewBody extends StatelessWidget {
  const PromoCodeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAccountListItemsAppBar(
            title: StringsManager.promoCode.tr(),
            backArrowOnPressed: () {
              GoRouter.of(context).pop();
            },
          ),
          const Divider(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: const CustomScrollView(
                physics: BouncingScrollPhysics(),
                slivers: [
                  PromoCodeListView(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
