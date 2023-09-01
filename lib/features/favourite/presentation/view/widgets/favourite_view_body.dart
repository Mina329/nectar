import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            CustomAppBar(
              title: StringsManager.favorite.tr(),
            ),
            const SliverToBoxAdapter(
              child: Divider(),
            ),
            const FavouriteItemListView(),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 70.h,
              ),
            ),
          ],
        ),
        CustomPositionedButton(
          onPressed: () {},
          txt: StringsManager.addAllToCart.tr(),
        ),
      ],
    );
  }
}
