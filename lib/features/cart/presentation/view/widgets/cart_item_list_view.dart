import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/features/cart/data/repos/cart_repo.dart';
import 'package:nectar/features/cart/presentation/view%20model/cart_cubit/cart_cubit.dart';
import 'package:nectar/features/cart/presentation/view%20model/cart_item_cubit/cart_item_cubit.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/service_locator.dart';
import '../../../../favourite/data/models/favourite_to_details_model.dart';
import '../../../data/models/cart_model/cart_model.dart';
import 'cart_item.dart';

class CartItemListView extends StatelessWidget {
  const CartItemListView({super.key, required this.cartModel});
  final CartModel cartModel;
  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 375),
            child: SlideAnimation(
              horizontalOffset: 50.w,
              child: FadeInAnimation(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: GestureDetector(
                    onTap: () {
                      final cartCubit = BlocProvider.of<CartCubit>(context);
                      GoRouter.of(context).push(
                        AppRouter.kItemDetailsView,
                        extra: FavouriteToDetailsModel(
                          cartModel.items![index].item!.id!,
                          null,
                          cartCubit,
                        ),
                      );
                    },
                    child: BlocProvider(
                      create: (context) => CartItemCubit(
                        cartRepo: getIt.get<CartRepo>(),
                        item: cartModel.items![index],
                        quantity: cartModel.items![index].qty!,
                      ),
                      child: const CartItem(),
                    ),
                  ),
                ),
              ),
            ),
          ),
          childCount: cartModel.items!.length,
        ),
      ),
    );
  }
}
