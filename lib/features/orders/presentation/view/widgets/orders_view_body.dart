import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import '../../../../account/presentation/view/widgets/custom_account_list_items_app_bar.dart';
import 'order_card_list_view.dart';

class OrdersViewBody extends StatelessWidget {
  const OrdersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAccountListItemsAppBar(
            title: StringsManager.orders.tr(),
            backArrowOnPressed: () {
              GoRouter.of(context).pop();
            },
          ),
          const Divider(),
          Expanded(
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 20.h,
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  sliver: const OrderCardListView(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
