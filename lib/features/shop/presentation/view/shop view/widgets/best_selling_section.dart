import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/features/shop/presentation/view%20model/best_selling_cubit/best_selling_cubit.dart';
import 'package:nectar/features/shop/presentation/view/shop%20view/widgets/sections_shimmer.dart';

import '../../../../../../core/l10n/locales.dart';
import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/strings_manager.dart';
import 'grocery_item.dart';

class BestSellingSection extends StatelessWidget {
  const BestSellingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellingCubit, BestSellingState>(
      builder: (context, state) {
        if (state is BestSellingLoading) {
          return const SectionsShimmer();
        } else if (state is BestSellingFailure) {
          return const SliverToBoxAdapter();
        } else if (state is BestSellingSuccess) {
          if (state.items.isEmpty) {
            return const SliverToBoxAdapter();
          }
          return SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      StringsManager.bestSelling.tr(),
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    TextButton(
                      onPressed: () {
                        GoRouter.of(context).push(
                          AppRouter.kBestSellingView,
                        );
                      },
                      child: Text(
                        StringsManager.seeAll.tr(),
                        style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(
                                  color: Theme.of(context).brightness ==
                                          Brightness.light
                                      ? ColorManager.green
                                      : ColorManager.greySmall,
                                ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 255.h,
                  child: ListView.builder(
                    itemCount:
                        state.items.length > 10 ? 10 : state.items.length,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: context.locale == ENGLISH_LOCALE
                          ? EdgeInsets.only(right: 15.w)
                          : EdgeInsets.only(left: 15.w),
                      child: GroceryItem(
                        id: state.items[index].id,
                        name: state.items[index].name,
                        price: "${state.items[index].price}",
                        imageLink: state.items[index].thumbnail,
                        quantity: state.items[index].qtyType ?? '',
                        offerPrice: state.items[index].offerPrice,
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }
        return const SliverToBoxAdapter();
      },
    );
  }
}
