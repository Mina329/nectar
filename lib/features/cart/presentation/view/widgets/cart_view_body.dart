import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/l10n/locales.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/core/widgets/custom_elevated_btn.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import 'cart_item_list_view.dart';
import 'cart_total_price.dart';
import '../../../../../core/widgets/custom_positioned_button.dart';
import 'checkout_sheet_item.dart';

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
        CustomPositionedButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              context: context,
              builder: (context) => _modalSheet(context),
            );
          },
          txt: StringsManager.goToCheckout.tr(),
        ),
        CartTotalPrice(
          isArabic: context.locale == ARABIC_LOCALE,
        ),
      ],
    );
  }

  Padding _modalSheet(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                StringsManager.checkout.tr(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).pop();
                },
                child: const Icon(Icons.close),
              )
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          const Divider(thickness: 5),
          CheckoutSheetItem(
            title: StringsManager.deliveryAddress.tr(),
            func: const Icon(Icons.location_on_outlined),
            onTap: () {},
          ),
          CheckoutSheetItem(
            title: StringsManager.totalPrice.tr(),
            func: Text(
              "\$15",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            onTap: () {
              GoRouter.of(context).pop();
            },
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            StringsManager.termsAndConditions.tr(),
            style: Theme.of(context).textTheme.bodySmall,
          ),
          SizedBox(
            height: 15.h,
          ),
          SizedBox(
            height: 67.h,
            width: 364.w,
            child: CustomElevatedBtn(
                onPressed: () {},
                txt: StringsManager.placeOrder.tr(),
                style: Theme.of(context).textTheme.labelLarge!),
          )
        ],
      ),
    );
  }
}
