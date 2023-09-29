import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/assets_manager.dart';
import 'package:nectar/core/utils/color_manager.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/core/widgets/custom_elevated_btn.dart';
import 'package:nectar/features/shop/presentation/view%20model/item_details_cubit/item_details_cubit.dart';
import 'item_details_section.dart';
import 'item_details_view_shimmer.dart';
import 'item_image_section.dart';

class ItemDetailsViewBody extends StatelessWidget {
  const ItemDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ItemDetailsCubit, ItemDetailsState>(
        builder: (context, state) {
          if (state is ItemDetailsLoading) {
            return const ItemDetailsViewShimmers();
          } else if (state is ItemDetailsFailure) {
            Fluttertoast.showToast(msg: state.errMessage);
            return Padding(
              padding: EdgeInsets.only(
                top: 50.h,
                left: 25.w,
                right: 25.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
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
                await BlocProvider.of<ItemDetailsCubit>(context)
                    .getItemById(state.item.id!);
                return Future.delayed(const Duration(seconds: 1));
              },
              child: CustomScrollView(
                slivers: [
                  ItemImageSection(
                    images: state.item.images,
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 25.h,
                    ),
                  ),
                  ItemDetailsSection(item: state.item),
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 40.h),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: 70.h,
                          width: 370.w,
                          child: CustomElevatedBtn(
                            onPressed: () {},
                            txt: StringsManager.addToCart.tr(),
                            style: Theme.of(context).textTheme.labelLarge!,
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
    );
  }
}
