import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../../../../../core/cache/cache_helper.dart';
import '../../../../../../core/cache/cache_keys_values.dart';
import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../../../core/widgets/custom_toast_widget.dart';
import '../../../view model/google_auth_cubit/google_auth_cubit.dart';

class AuthAppBar extends StatelessWidget {
  const AuthAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 105.h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10.h),
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
                child: InkWell(
                  onTap: () {
                    BlocProvider.of<GoogleAuthCubit>(context).logOut();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_rounded,
                  ),
                ),
              ),
            ),
            const SizedBox()
          ],
        ),
      ),
    );
  }
}
