import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:nectar/core/cache/cache_helper.dart';
import 'package:nectar/core/cache/cache_keys_values.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/widgets/custom_elevated_btn.dart';
import 'package:nectar/core/widgets/custom_toast_widget.dart';
import 'package:nectar/features/account/presentation/view%20model/account_info_cubit/account_info_cubit.dart';
import 'package:nectar/features/account/presentation/view/account%20view/widgets/profile_card.dart';
import 'package:nectar/features/auth/presentation/view%20model/google_auth_cubit/google_auth_cubit.dart';
import '../../../../../../core/utils/assets_manager.dart';
import '../../../../../../core/utils/strings_manager.dart';
import '../../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../../home/presentation/view_model/navigation_bar_cubit/navigation_bar_cubit.dart';
import 'account_list_item_list_view.dart';
import 'account_shimmer.dart';

class AccountViewBody extends StatefulWidget {
  const AccountViewBody({super.key});

  @override
  State<AccountViewBody> createState() => _AccountViewBodyState();
}

class _AccountViewBodyState extends State<AccountViewBody> {
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
          BlocBuilder<AccountInfoCubit, AccountInfoState>(
            builder: (context, state) {
              if (state is AccountInfoLoading) {
                return const AccountShimmer();
              } else if (state is AccountInfoFailure) {
                return Padding(
                  padding: EdgeInsets.only(
                    top: 50.h,
                    left: 25.w,
                    right: 25.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
              } else if (state is AccountInfoSuccess) {
                return CustomScrollView(
                  controller: _scrollController,
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    ProfileCard(account: state.account),
                    AccountListItemListView(accountModel: state.account)
                  ],
                );
              } else if (state is AccountInfoInitial) {
                BlocProvider.of<AccountInfoCubit>(context).getUserProfile();
                return const AccountShimmer();
              }

              return Container();
            },
          ),
          Positioned(
              bottom: 25.h,
              left: 25.w,
              right: 25.w,
              child: SizedBox(
                height: 70.h,
                child: BlocListener<GoogleAuthCubit, GoogleAuthState>(
                  listener: (context, state) async {
                    if (state is GoogleLogOutAuthLoading) {
                      CustomLoadingIndicator.buildLoadingIndicator(context);
                    } else if (state is GoogleLogOutAuthFailure) {
                      GoRouter.of(context).pop();
                      CustomToastWidget.buildCustomToast(
                          context, state.errMessage, ToastType.failure, 200.h);
                    } else if (state is GoogleLogOutAuthSuccess) {
                      GoRouter.of(context).pop();
                      await CacheData.setSecuredData(
                          key: CacheKeys.kOAUTHTOKEN, value: null);
                      await HydratedBloc.storage.clear();
                      if (context.mounted) {
                        GoRouter.of(context).go(AppRouter.kLoginView);
                      }
                    }
                  },
                  child: CustomElevatedBtn(
                    onPressed: () {
                      BlocProvider.of<GoogleAuthCubit>(context).logOut();
                    },
                    style: Theme.of(context).textTheme.labelLarge!,
                    txt: StringsManager.signOut.tr(),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
