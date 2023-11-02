import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/l10n/locales.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/features/shop/presentation/view%20model/exclusive_offers_cubit/exclusive_offers_cubit.dart';
import 'package:nectar/features/shop/presentation/view/shop%20view/widgets/sections_shimmer.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/strings_manager.dart';
import '../../../../../home/presentation/view_model/navigation_bar_cubit/navigation_bar_cubit.dart';
import '../shop_view.dart';
import 'grocery_item.dart';

class ExclusiveOfferSection extends StatelessWidget {
  const ExclusiveOfferSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExclusiveOffersCubit, ExclusiveOffersState>(
      builder: (context, state) {
        if (state is ExclusiveOffersLoading) {
          return const SectionsShimmer();
        } else if (state is ExclusiveOffersFailure) {
          return const SliverToBoxAdapter();
        } else if (state is ExclusiveOffersSuccess) {
          if (state.items.isEmpty) {
            return const SliverToBoxAdapter();
          }
          return SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      StringsManager.exlusiveOffer.tr(),
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    TextButton(
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.kSectionView,
                            extra: (
                              SectionType.exclusiveOffer,
                              BlocProvider.of<NavigationBarCubit>(context)
                            ));
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
                  child: AnimationLimiter(
                    child: ListView.builder(
                      itemCount:
                          state.items.length > 10 ? 10 : state.items.length,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          AnimationConfiguration.staggeredList(
                        position: index,
                        duration: const Duration(milliseconds: 375),
                        child: SlideAnimation(
                          horizontalOffset: 50.w,
                          child: FadeInAnimation(
                            child: Padding(
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
                        ),
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
