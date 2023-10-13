import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/widgets/custom_empty_widget.dart';
import 'package:nectar/core/widgets/custom_toast_widget.dart';
import 'package:nectar/features/cart/presentation/view%20model/cart_cubit/cart_cubit.dart';
import 'package:nectar/features/cart/presentation/view%20model/cart_items_cubit/cart_items_cubit.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets_manager.dart';
import '../../../../favourite/data/models/favourite_to_details_model.dart';
import 'cart_item.dart';
import 'cart_item_shimmer.dart';

class CartItemListView extends StatelessWidget {
  const CartItemListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
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
        } else if (cartState is CartSuccess1) {
          if (cartState.cart.items!.isEmpty) {
            return const SliverFillRemaining(
              child: Center(
                child: CustomEmptyWidget(),
              ),
            );
          }
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: GestureDetector(
                  onTap: () {
                    final cartCubit = BlocProvider.of<CartCubit>(context);
                    GoRouter.of(context).push(
                      AppRouter.kItemDetailsView,
                      extra: FavouriteToDetailsModel(
                        cartState.cart.items![index].item!.id!,
                        null,
                        cartCubit,
                      ),
                    );
                  },
                  child: BlocListener<CartItemsCubit, CartItemsState>(
                    listener: (context, state) {
                      if (state is AddCartItemsFailure) {
                        CustomToastWidget.buildCustomToast(context,
                            state.errMessage, ToastType.failure, 200.h);
                      } else if (state is AddCartItemsSuccess) {
                        BlocProvider.of<CartCubit>(context).getCart();
                      } else if (state is UpdateCartItemsFailure) {
                        CustomToastWidget.buildCustomToast(context,
                            state.errMessage, ToastType.failure, 200.h);
                      } else if (state is UpdateCartItemsSuccess) {
                        BlocProvider.of<CartCubit>(context).getCart();
                      } else if (state is DeleteCartItemsSuccess) {
                        CustomToastWidget.buildCustomToast(context,
                            state.successMessage, ToastType.success, 200.h);
                        BlocProvider.of<CartCubit>(context).getCart();
                      } else if (state is DeleteCartItemsFailure) {
                        CustomToastWidget.buildCustomToast(context,
                            state.errMessage, ToastType.failure, 200.h);
                      }
                    },
                    child: CartItem(
                      oncloseTap: () {
                        BlocProvider.of<CartItemsCubit>(context)
                            .deletItemFromCart(
                          cartState.cart.items![index].item!.id!,
                        );
                      },
                      onMinusTap: () {
                        BlocProvider.of<CartItemsCubit>(context)
                            .updateItemsToCart(
                                cartState.cart.items![index].item!.id!,
                                cartState.cart.items![index].qty! - 1);
                      },
                      onPlusTap: () {
                        BlocProvider.of<CartItemsCubit>(context).addItemsToCart(
                            cartState.cart.items![index].item!.id!, 1);
                      },
                      id: cartState.cart.items![index].item!.id!,
                      name: cartState.cart.items![index].item!.name,
                      imageLink: cartState.cart.items![index].item!.thumbnail,
                      offerPrice: cartState.cart.items![index].item!.offerPrice,
                      price: cartState.cart.items![index].item!.price,
                      qty: cartState.cart.items![index].qty,
                      qtyType: cartState.cart.items![index].item!.qtyType,
                    ),
                  ),
                ),
              ),
              childCount: cartState.cart.items!.length,
            ),
          );
        } else if (cartState is CartSuccess2) {
          if (cartState.cart.items!.isEmpty) {
            return const SliverFillRemaining(
              child: Center(
                child: CustomEmptyWidget(),
              ),
            );
          }
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: GestureDetector(
                  onTap: () {
                    final cartCubit = BlocProvider.of<CartCubit>(context);
                    GoRouter.of(context).push(
                      AppRouter.kItemDetailsView,
                      extra: FavouriteToDetailsModel(
                        cartState.cart.items![index].item!.id!,
                        null,
                        cartCubit,
                      ),
                    );
                  },
                  child: BlocListener<CartItemsCubit, CartItemsState>(
                    listener: (context, state) {
                      if (state is AddCartItemsFailure) {
                        CustomToastWidget.buildCustomToast(context,
                            state.errMessage, ToastType.failure, 200.h);
                      } else if (state is AddCartItemsSuccess) {
                        BlocProvider.of<CartCubit>(context).getCart();
                      } else if (state is UpdateCartItemsFailure) {
                        CustomToastWidget.buildCustomToast(context,
                            state.errMessage, ToastType.failure, 200.h);
                      } else if (state is UpdateCartItemsSuccess) {
                        BlocProvider.of<CartCubit>(context).getCart();
                      } else if (state is DeleteCartItemsSuccess) {
                        CustomToastWidget.buildCustomToast(context,
                            state.successMessage, ToastType.success, 200.h);
                        BlocProvider.of<CartCubit>(context).getCart();
                      } else if (state is DeleteCartItemsFailure) {
                        CustomToastWidget.buildCustomToast(context,
                            state.errMessage, ToastType.failure, 200.h);
                      }
                    },
                    child: CartItem(
                      oncloseTap: () {
                        BlocProvider.of<CartItemsCubit>(context)
                            .deletItemFromCart(
                          cartState.cart.items![index].item!.id!,
                        );
                      },
                      onMinusTap: () {
                        BlocProvider.of<CartItemsCubit>(context)
                            .updateItemsToCart(
                                cartState.cart.items![index].item!.id!,
                                cartState.cart.items![index].qty! - 1);
                      },
                      onPlusTap: () {
                        BlocProvider.of<CartItemsCubit>(context).addItemsToCart(
                            cartState.cart.items![index].item!.id!, 1);
                      },
                      id: cartState.cart.items![index].item!.id!,
                      name: cartState.cart.items![index].item!.name,
                      imageLink: cartState.cart.items![index].item!.thumbnail,
                      offerPrice: cartState.cart.items![index].item!.offerPrice,
                      price: cartState.cart.items![index].item!.price,
                      qty: cartState.cart.items![index].qty,
                      qtyType: cartState.cart.items![index].item!.qtyType,
                    ),
                  ),
                ),
              ),
              childCount: cartState.cart.items!.length,
            ),
          );
        }
        return const SliverToBoxAdapter();
      },
    );
  }
}
