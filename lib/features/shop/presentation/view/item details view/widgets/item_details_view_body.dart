import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/assets_manager.dart';
import 'package:nectar/core/utils/color_manager.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/core/widgets/custom_elevated_btn.dart';
import 'package:nectar/features/cart/presentation/view%20model/cart_cubit/cart_cubit.dart';
import 'package:nectar/features/favourite/presentation/view%20model/favourite_items_cubit/favourite_items_cubit.dart';
import 'package:nectar/features/shop/presentation/view%20model/add_to_cart_cubit/add_to_cart_cubit.dart';
import 'package:nectar/features/shop/presentation/view%20model/item_details_cubit/item_details_cubit.dart';
import '../../../../../../core/cache/cache_helper.dart';
import '../../../../../../core/cache/cache_keys_values.dart';
import '../../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../../../core/widgets/custom_toast_widget.dart';
import 'item_details_section.dart';
import 'item_details_view_shimmer.dart';
import 'item_image_section.dart';

class ItemDetailsViewBody extends StatelessWidget {
  const ItemDetailsViewBody({
    super.key,
    required this.fromFavourite,
    required this.fromCart,
  });
  final bool fromFavourite;
  final bool fromCart;
  @override
  Widget build(BuildContext context) {
    int counterValue = 1;

    return WillPopScope(
      onWillPop: () async {
        if (fromFavourite) {
          BlocProvider.of<FavouriteItemsCubit>(context).getFavouriteItems();
        }
        return true;
      },
      child: Scaffold(
        body: BlocBuilder<ItemDetailsCubit, ItemDetailsState>(
          builder: (context, state) {
            if (state is ItemDetailsLoading) {
              return const ItemDetailsViewShimmers();
            } else if (state is ItemDetailsFailure) {
              CustomToastWidget.buildCustomToast(
                  context, state.errMessage, ToastType.failure, 150.h);
              return Padding(
                padding: EdgeInsets.only(
                  top: 50.h,
                  left: 25.w,
                  right: 25.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        GoRouter.of(context).pop();
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_rounded,
                      ),
                    ),
                    Center(
                      child: SvgPicture.asset(
                        AssetsManager.error,
                        width: 300.w,
                        height: 500.h,
                      ),
                    )
                  ],
                ),
              );
            } else if (state is ItemDetailsSuccess) {
              return RefreshIndicator(
                color: ColorManager.green,
                onRefresh: () async {
                  await BlocProvider.of<ItemDetailsCubit>(context).getItemById(
                      state.item.id!,
                      CacheData.getData(key: CacheKeys.kLANGUAGE) ==
                              CacheValues.ARABIC
                          ? "ar"
                          : "en");
                  return Future.delayed(const Duration(seconds: 1));
                },
                child: CustomScrollView(
                  slivers: [
                    ItemImageSection(
                      thumbnailImage: state.item.thumbnail,
                      images: state.item.images,
                      fromFavourite: fromFavourite,
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: 25.h,
                      ),
                    ),
                    ItemDetailsSection(
                      onCounterChanged: (value) {
                        counterValue = value;
                      },
                      item: state.item,
                    ),
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 40.h),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            height: 70.h,
                            width: 370.w,
                            child: BlocListener<AddToCartCubit, AddToCartState>(
                              listener: (context, state) {
                                if (state is AddToCartLoading) {
                                  CustomLoadingIndicator.buildLoadingIndicator(
                                      context);
                                } else if (state is AddToCartFailure) {
                                  GoRouter.of(context).pop();
                                  CustomToastWidget.buildCustomToast(
                                    context,
                                    state.errMessage,
                                    ToastType.failure,
                                    200.h,
                                  );
                                } else if (state is AddToCartSuccess) {
                                  GoRouter.of(context).pop();
                                  CustomToastWidget.buildCustomToast(
                                    context,
                                    state.successMessage,
                                    ToastType.success,
                                    200.h,
                                  );
                                  if (fromCart) {
                                    BlocProvider.of<CartCubit>(context)
                                        .getCart();
                                  }
                                }
                              },
                              child: CustomElevatedBtn(
                                onPressed: () {
                                  BlocProvider.of<AddToCartCubit>(context)
                                      .addToCart(state.item.id!, counterValue);
                                },
                                txt: StringsManager.addToCart.tr(),
                                style: Theme.of(context).textTheme.labelLarge!,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
