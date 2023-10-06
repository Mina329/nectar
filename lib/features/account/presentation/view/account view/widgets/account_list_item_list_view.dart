import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/features/account/data/models/account_item_list_navigation_model/account_item_list_navigation_model.dart';
import 'package:nectar/features/account/data/models/account_model/account_model/account_model.dart';
import 'package:nectar/features/account/presentation/view%20model/account_info_cubit/account_info_cubit.dart';

import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/utils/strings_manager.dart';
import 'account_list_item.dart';

class AccountListItemListView extends StatelessWidget {
  AccountListItemListView({super.key, required this.accountModel});
  final List<String> titleList = [
    StringsManager.orders.tr(),
    StringsManager.myDetails.tr(),
    StringsManager.deliveryAddress.tr(),
    StringsManager.paymentMethod.tr(),
    StringsManager.about.tr(),
  ];
  final List<IconData?> iconsList = [
    Icons.shopping_bag_outlined,
    FontAwesomeIcons.addressCard,
    Icons.location_on_outlined,
    Icons.payment,
    Icons.error_outline
  ];
  final List<String> routerList = [
    AppRouter.kOrdersView,
    AppRouter.kMyDetailsView,
    AppRouter.kDeliveryAddressView,
    AppRouter.kPaymentMethodView,
    AppRouter.kAboutView,
  ];
  late final List<Object?> extras;
  final AccountModel accountModel;

  @override
  Widget build(BuildContext context) {
    extras = [
      null,
      AccountItemListNavigationModel(
          BlocProvider.of<AccountInfoCubit>(context), accountModel),
      null,
      null,
      null
    ];
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: titleList.length,
        (context, index) => AccountListItem(
          leadingIcon: iconsList[index],
          title: titleList[index],
          onTap: () {
            GoRouter.of(context).push(routerList[index], extra: extras[index]);
          },
        ),
      ),
    );
  }
}
