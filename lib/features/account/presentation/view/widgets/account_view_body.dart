import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/features/account/presentation/view/widgets/account_list_item.dart';
import 'package:nectar/features/account/presentation/view/widgets/profile_card.dart';

import '../../../../../core/utils/strings_manager.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const ProfileCard(),
        AccountListItemListView(),
      ],
    );
  }
}

class AccountListItemListView extends StatelessWidget {
  AccountListItemListView({super.key});
  final List<String> titleList = [
    StringsManager.orders.tr(),
    StringsManager.myDetails.tr(),
    StringsManager.deliveryAddress.tr(),
    StringsManager.paymentMethod.tr(),
    StringsManager.promoCode.tr(),
    StringsManager.about.tr(),
  ];
  final List<IconData?> iconsList = [
    Icons.shopping_bag_outlined,
    FontAwesomeIcons.addressCard,
    Icons.location_on_outlined,
    Icons.payment,
    Icons.receipt_outlined,
    Icons.error_outline
  ];
  final List<String> routerList = [
    AppRouter.kOrdersView,
    AppRouter.kMyDetailsView,
    AppRouter.kDeliveryAddressView,
    AppRouter.kPaymentMethodView,
    AppRouter.kOrdersView,
    AppRouter.kOrdersView,
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: titleList.length,
        (context, index) => AccountListItem(
          leadingIcon: iconsList[index],
          title: titleList[index],
          onTap: () {
            GoRouter.of(context).push(routerList[index]);
          },
        ),
      ),
    );
  }
}
