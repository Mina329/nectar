import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/cache/cache_helper.dart';
import 'package:nectar/core/cache/cache_keys_values.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/widgets/custom_elevated_btn.dart';
import 'package:nectar/features/account/presentation/view%20model/account_info_cubit/account_info_cubit.dart';
import 'package:nectar/features/account/presentation/view/account%20view/widgets/profile_card.dart';
import 'package:nectar/features/auth/presentation/view%20model/google_auth_cubit/google_auth_cubit.dart';
import '../../../../../../core/utils/assets_manager.dart';
import '../../../../../../core/utils/strings_manager.dart';
import '../../../../../../core/widgets/custom_loading_indicator.dart';
import 'account_list_item_list_view.dart';
import 'account_shimmer.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
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
                physics: const BouncingScrollPhysics(),
                slivers: [
                  ProfileCard(account: state.account),
                  AccountListItemListView(accountModel: state.account)
                ],
              );
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
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return const CustomLoadingIndicator();
                      },
                    );
                  } else if (state is GoogleLogOutAuthFailure) {
                    GoRouter.of(context).pop();
                    Fluttertoast.showToast(msg: state.errMessage);
                  } else if (state is GoogleLogOutAuthSuccess) {
                    GoRouter.of(context).pop();
                    await CacheData.setData(
                        key: CacheKeys.kSIGNED, value: CacheValues.NOT_SIGNED);
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
    );
  }
}
