import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/features/account/data/models/account_model/account_model.dart';
import '../../../../../../core/utils/strings_manager.dart';
import '../../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../../account/presentation/view/account view/widgets/custom_account_list_items_app_bar.dart';
import '../../../view_model/address_cubit/address_cubit.dart';
import 'add_address_button.dart';
import 'delivery_address_list_view.dart';

class DeliveryAddressViewBody extends StatelessWidget {
  const DeliveryAddressViewBody({super.key, required this.account});
  final AccountModel account;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAccountListItemsAppBar(
            title: StringsManager.deliveryAddress.tr(),
            backArrowOnPressed: () {
              GoRouter.of(context).pop();
            },
          ),
          const Divider(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(
                      child: Center(
                    child: Text(
                      StringsManager.swipe.tr(),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  )),
                  BlocListener<AddressCubit, AddressState>(
                    listener: (context, state) {
                      if (state is DefaultAddressLoading) {
                        CustomLoadingIndicator.buildLoadingIndicator(context);
                      } else if (state is AddressLoading) {
                        CustomLoadingIndicator.buildLoadingIndicator(context);
                      } else {
                        GoRouter.of(context).pop();
                      }
                    },
                    child: const DeliveryAddressListView(),
                  ),
                ],
              ),
            ),
          ),
          const AddAddressButton()
        ],
      ),
    );
  }
}
