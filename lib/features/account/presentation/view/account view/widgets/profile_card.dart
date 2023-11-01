import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/strings_manager.dart';

import '../../../../../../core/utils/assets_manager.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../data/models/account_item_list_navigation_model/account_item_list_navigation_model.dart';
import 'package:nectar/features/account/data/models/account_model/account_model.dart';
import '../../../view model/account_info_cubit/account_info_cubit.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key, required this.account});
  final AccountModel account;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 50.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: SizedBox(
              height: 80.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  account.profilePicture == null
                      ? Image.asset(
                          AssetsManager.errorAlt,
                          width: 64.w,
                          height: 64.h,
                        )
                      : CachedNetworkImage(
                          imageUrl: account.profilePicture!,
                          width: 64.w,
                          height: 64.h,
                          errorWidget: (context, url, error) {
                            return Image.asset(
                              AssetsManager.errorAlt,
                              width: 64.w,
                              height: 64.h,
                            );
                          },
                          placeholder: (context, url) =>
                              const CustomCircularIndicator(),
                          imageBuilder: (context, imageProvider) =>
                              CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  foregroundColor: Colors.transparent,
                                  radius: 32.w,
                                  backgroundImage: imageProvider),
                        ),
                  SizedBox(
                    width: 20.w,
                  ),
                  SizedBox(
                    width: 250.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Text(
                                account.firstName == null
                                    ? StringsManager.unavailable.tr()
                                    : "${account.firstName} ${account.lastName ?? ''}",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                GoRouter.of(context).push(
                                    AppRouter.kMyDetailsView,
                                    extra: AccountItemListNavigationModel(
                                        BlocProvider.of<AccountInfoCubit>(
                                            context),
                                        account));
                              },
                              child: Icon(
                                Icons.create_outlined,
                                color: Theme.of(context).brightness ==
                                        Brightness.light
                                    ? ColorManager.green
                                    : ColorManager.whiteText,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 230.w,
                          child: Text(
                            account.email ?? '',
                            overflow: TextOverflow.ellipsis,
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 16.sp,
                                      fontFamily: AssetsManager.gilroyRegular,
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kSettingView);
                    },
                    child: const Icon(
                      Icons.settings_outlined,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          const Divider(),
        ],
      ),
    );
  }
}
