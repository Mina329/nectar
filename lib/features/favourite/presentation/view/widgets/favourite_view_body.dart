import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/features/favourite/presentation/view%20model/add_favourite_items_to_cart_cubit/add_favourite_items_to_cart_cubit.dart';
import 'package:nectar/features/favourite/presentation/view%20model/favourite_items_cubit/favourite_items_cubit.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/strings_manager.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../../core/widgets/custom_positioned_button.dart';
import '../../../../../core/widgets/custom_toast_widget.dart';
import 'favourite_item_list_view.dart';

class FavouriteViewBody extends StatelessWidget {
  const FavouriteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        RefreshIndicator(
          color: ColorManager.green,
          onRefresh: () async {
            await BlocProvider.of<FavouriteItemsCubit>(context)
                .getFavouriteItems();
            return Future.delayed(
              const Duration(
                seconds: 1,
              ),
            );
          },
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              CustomAppBar(
                title: StringsManager.favorite.tr(),
              ),
              const SliverToBoxAdapter(
                child: Divider(),
              ),
              const FavouriteItemListView(),
            ],
          ),
        ),
        BlocListener<AddFavouriteItemsToCartCubit,
            AddFavouriteItemsToCartState>(
          listener: (context, state) {
            if (state is AddItemToCartLoading) {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return const CustomLoadingIndicator();
                },
              );
            } else if (state is AddItemToCartFailure) {
              GoRouter.of(context).pop();
              CustomToastWidget.buildCustomToast(
                context,
                state.errMessage,
                ToastType.failure,
                200.h,
              );
            } else if (state is AddItemToCartSuccess) {
              GoRouter.of(context).pop();
              CustomToastWidget.buildCustomToast(
                context,
                state.successMessage,
                ToastType.success,
                200.h,
              );
            }
          },
          child: CustomPositionedButton(
            onPressed: () {
              BlocProvider.of<AddFavouriteItemsToCartCubit>(context)
                  .addItemsToCart(
                BlocProvider.of<FavouriteItemsCubit>(context).favouriteItemsIds,
              );
            },
            txt: StringsManager.addAllToCart.tr(),
          ),
        ),
      ],
    );
  }
}
