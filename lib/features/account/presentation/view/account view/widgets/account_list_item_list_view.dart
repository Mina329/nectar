import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/features/account/data/models/account_item_list_navigation_model/account_item_list_navigation_model.dart';
import 'package:nectar/features/account/data/models/account_model/account_model.dart';
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
    StringsManager.about.tr(),
  ];
  final List<IconData?> iconsList = [
    Icons.shopping_bag_outlined,
    FontAwesomeIcons.addressCard,
    Icons.location_on_outlined,
    Icons.error_outline
  ];
  final List<String> routerList = [
    AppRouter.kOrdersView,
    AppRouter.kMyDetailsView,
    AppRouter.kDeliveryAddressView,
    AppRouter.kAboutView,
  ];
  final AccountModel accountModel;

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: titleList.length,
          (context, index) => AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 375),
            child: SlideAnimation(
              horizontalOffset: 50.w,
              child: FadeInAnimation(
                child: Column(
                  children: [
                    AccountListItem(
                      leadingIcon: iconsList[index],
                      title: titleList[index],
                      onTap: () {
                        GoRouter.of(context).push(routerList[index],
                            extra: AccountItemListNavigationModel(
                                BlocProvider.of<AccountInfoCubit>(context),
                                accountModel));
                      },
                    ),
                    const Divider()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
