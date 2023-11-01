import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import 'package:nectar/core/l10n/locales.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/features/cart/presentation/view%20model/cart_cubit/cart_cubit.dart';
import 'package:nectar/features/cart/presentation/view%20model/checkout_cubit/checkout_cubit.dart';
import 'package:nectar/features/cart/presentation/view%20model/payment_cubit/payment_cubit.dart';

import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../core/widgets/custom_empty_widget.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../../core/widgets/custom_positioned_button.dart';
import '../../../../../core/widgets/custom_toast_widget.dart';
import '../../../../home/presentation/view_model/navigation_bar_cubit/navigation_bar_cubit.dart';
import 'cart_item_list_view.dart';
import 'cart_item_shimmer.dart';
import 'cart_total_price.dart';

class CartViewBody extends StatefulWidget {
  const CartViewBody({super.key});

  @override
  State<CartViewBody> createState() => _CartViewBodyState();
}

class _CartViewBodyState extends State<CartViewBody> {
  late ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_scrollController.offset > 0.0) {
          _scrollController.animateTo(
            0.0,
            duration: const Duration(
              milliseconds: 500,
            ),
            curve: Curves.ease,
          );
          return false;
        } else {
          BlocProvider.of<NavigationBarCubit>(context)
              .savedPageController
              .jumpToPage(0);
          BlocProvider.of<NavigationBarCubit>(context).changeIndex(0);

          return false;
        }
      },
      child: Stack(
        children: [
          CustomScrollView(
            controller: _scrollController,
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
                    CustomToastWidget.buildCustomToast(context,
                        cartState.errMessage, ToastType.failure, 200.h);
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
                        hasScrollBody: false,
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
            ],
          ),
          BlocListener<PaymentCubit, PaymentState>(
            listener: (context, state) {
              if (state is PaymentSuccess) {
                BlocProvider.of<CartCubit>(context).getCart();
                showSuccessDialog(context);
              } else if (state is PaymentFailure) {
                CustomToastWidget.buildCustomToast(
                    context,
                    StringsManager.somethingWrong.tr(),
                    ToastType.failure,
                    200.h);
              }
            },
            child: BlocListener<CheckoutCubit, CheckoutState>(
              listener: (context, state) async {
                if (state is CheckoutLoading) {
                  CustomLoadingIndicator.buildLoadingIndicator(context);
                } else if (state is CheckoutFailure) {
                  GoRouter.of(context).pop();
                  CustomToastWidget.buildCustomToast(
                      context, state.errMessage, ToastType.failure, 200.h);
                } else if (state is CheckoutSuccess) {
                  GoRouter.of(context).pop();
                  BlocProvider.of<PaymentCubit>(context).initStripe(
                    context,
                    state.checkoutModel.cs!,
                    state.checkoutModel.pk!,
                    state.checkoutModel.order!.id!,
                  );
                }
              },
              child: CustomPositionedButton(
                onPressed: () {
                  BlocProvider.of<CheckoutCubit>(context).checkoutCart();
                },
                txt: StringsManager.goToCheckout.tr(),
              ),
            ),
          ),
          CartTotalPrice(
            isArabic: context.locale == ARABIC_LOCALE,
          ),
        ],
      ),
    );
  }

  Future<void> showSuccessDialog(BuildContext context) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            StringsManager.orderSuccessful.tr(),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          content: Container(
            height: 100.h,
            width: 100.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 3.sp,
                color: ColorManager.green,
              ),
            ),
            child: Icon(
              FontAwesomeIcons.check,
              color: ColorManager.green,
              size: 50.sp,
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                StringsManager.ok.tr(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
