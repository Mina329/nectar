import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/l10n/locales.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/features/cart/presentation/view%20model/cart_cubit/cart_cubit.dart';
import 'package:nectar/features/cart/presentation/view%20model/checkout_cubit/checkout_cubit.dart';
import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../core/widgets/custom_empty_widget.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../../core/widgets/custom_toast_widget.dart';
import 'cart_item_list_view.dart';
import 'cart_item_shimmer.dart';
import 'cart_total_price.dart';
import '../../../../../core/widgets/custom_positioned_button.dart';

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
            BlocBuilder<CartCubit, CartState>(
              builder: (context, cartState) {
                if (cartState is CartLoading) {
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.w),
                        child: const CartItemShimmer(),
                      ),
                      childCount: 10,
                    ),
                  );
                } else if (cartState is CartFailure) {
                  CustomToastWidget.buildCustomToast(
                      context, cartState.errMessage, ToastType.failure, 200.h);
                  return SliverToBoxAdapter(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(15.h),
                        child: SvgPicture.asset(
                          AssetsManager.error,
                          width: 300.w,
                          height: 500.h,
                        ),
                      ),
                    ),
                  );
                } else if (cartState is CartSuccess) {
                  if (cartState.cart.items!.isEmpty) {
                    return const SliverFillRemaining(
                      child: Center(
                        child: CustomEmptyWidget(),
                      ),
                    );
                  }
                  return CartItemListView(
                    cartModel: cartState.cart,
                  );
                }
                return const SliverToBoxAdapter();
              },
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 67.h,
              ),
            ),
          ],
        ),
        BlocListener<CheckoutCubit, CheckoutState>(
          listener: (context, state) async {
            if (state is CheckoutLoading) {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return const CustomLoadingIndicator();
                },
              );
            } else if (state is CheckoutFailure) {
              GoRouter.of(context).pop();
              CustomToastWidget.buildCustomToast(
                  context, state.errMessage, ToastType.failure, 200.h);
            } else if (state is CheckoutSuccess) {
              GoRouter.of(context).pop();
              Stripe.publishableKey = state.checkoutModel.publishableKey!;
              await Stripe.instance.initPaymentSheet(
                paymentSheetParameters: SetupPaymentSheetParameters(
                  appearance: PaymentSheetAppearance(
                    colors: PaymentSheetAppearanceColors(
                      icon: Theme.of(context).brightness == Brightness.light
                          ? ColorManager.darkBluePrimary
                          : ColorManager.whiteText,
                      background: Theme.of(context).scaffoldBackgroundColor,
                      componentBackground:
                          Theme.of(context).brightness == Brightness.light
                              ? ColorManager.whiteBackground
                              : ColorManager.darkBluePrimary,
                      componentBorder: ColorManager.borderColorDARK,
                      componentDivider: ColorManager.borderColorDARK,
                      componentText:
                          Theme.of(context).brightness == Brightness.light
                              ? ColorManager.darkBluePrimary
                              : ColorManager.whiteText,
                      primaryText:
                          Theme.of(context).brightness == Brightness.light
                              ? ColorManager.darkBluePrimary
                              : ColorManager.whiteText,
                      secondaryText:
                          Theme.of(context).brightness == Brightness.light
                              ? ColorManager.darkBluePrimary
                              : ColorManager.whiteText,
                      placeholderText:
                          Theme.of(context).brightness == Brightness.light
                              ? ColorManager.darkBluePrimary
                              : ColorManager.whiteText,
                    ),
                    primaryButton: const PaymentSheetPrimaryButtonAppearance(
                      colors: PaymentSheetPrimaryButtonTheme(
                        light: PaymentSheetPrimaryButtonThemeColors(
                          background: ColorManager.green,
                        ),
                        dark: PaymentSheetPrimaryButtonThemeColors(
                          background: ColorManager.green,
                        ),
                      ),
                    ),
                  ),
                  paymentIntentClientSecret: state.checkoutModel.clientSecret,
                  merchantDisplayName: 'Nectar',
                ),
              );
              await Stripe.instance.presentPaymentSheet();
            }
          },
          child: CustomPositionedButton(
            onPressed: () {
              BlocProvider.of<CheckoutCubit>(context).checkoutCart();
            },
            txt: StringsManager.goToCheckout.tr(),
          ),
        ),
        CartTotalPrice(
          isArabic: context.locale == ARABIC_LOCALE,
        ),
      ],
    );
  }
}
