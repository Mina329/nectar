import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar/features/favourite/presentation/view%20model/favourite_items_cubit/favourite_items_cubit.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/strings_manager.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../core/widgets/custom_positioned_button.dart';
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
        CustomPositionedButton(
          onPressed: () {},
          txt: StringsManager.addAllToCart.tr(),
        ),
      ],
    );
  }
}
