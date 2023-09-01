import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/l10n/locales.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import 'cart_item_list_view.dart';
import 'cart_total_price.dart';
import 'checkout_button.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            CustomAppBar(
              title: StringsManager.myCart.tr(),
            ),
            const SliverToBoxAdapter(
              child: Divider(),
            ),
            const CartItemListView(),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 67.h,
              ),
            ),
          ],
        ),
        const CheckoutButton(),
        CartTotalPrice(
          isArabic: context.locale == ARABIC_LOCALE,
        ),
      ],
    );
  }
}
