import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/features/favourite/presentation/view%20model/add_favourite_items_to_cart_cubit/add_favourite_items_to_cart_cubit.dart';
import 'package:nectar/features/favourite/presentation/view%20model/favourite_items_cubit/favourite_items_cubit.dart';
import '../../../../../core/utils/strings_manager.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../core/widgets/custom_positioned_button.dart';
import '../../../../../core/widgets/custom_toast_widget.dart';
import '../../../../home/presentation/view_model/navigation_bar_cubit/navigation_bar_cubit.dart';
import 'favourite_item_list_view.dart';

class FavouriteViewBody extends StatefulWidget {
  const FavouriteViewBody({super.key});

  @override
  State<FavouriteViewBody> createState() => _FavouriteViewBodyState();
}

class _FavouriteViewBodyState extends State<FavouriteViewBody> {
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
                title: StringsManager.favorite.tr(),
              ),
              const SliverToBoxAdapter(
                child: Divider(),
              ),
              const FavouriteItemListView(),
            ],
          ),
          BlocListener<AddFavouriteItemsToCartCubit,
              AddFavouriteItemsToCartState>(
            listener: (context, state) {
              if (state is AddItemToCartFailure) {
                CustomToastWidget.buildCustomToast(
                  context,
                  state.errMessage,
                  ToastType.failure,
                  200.h,
                );
              } else if (state is AddItemToCartSuccess) {
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
                  BlocProvider.of<FavouriteItemsCubit>(context)
                      .favouriteItemsIds,
                );
              },
              txt: StringsManager.addAllToCart.tr(),
            ),
          ),
        ],
      ),
    );
  }
}
