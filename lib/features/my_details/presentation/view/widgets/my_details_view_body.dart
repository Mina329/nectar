import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/widgets/custom_elevated_btn.dart';
import 'package:nectar/features/account/presentation/view%20model/account_info_cubit/account_info_cubit.dart';
import 'package:nectar/features/my_details/presentation/view%20model/my_details_cubit/my_details_cubit.dart';

import '../../../../../core/utils/strings_manager.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../../core/widgets/custom_toast_widget.dart';
import 'package:nectar/features/account/data/models/account_model/account_model.dart';
import '../../../../account/presentation/view/account view/widgets/custom_account_list_items_app_bar.dart';
import 'my_details_form.dart';
import 'my_details_img.dart';

// ignore: must_be_immutable
class MyDetailsViewBody extends StatelessWidget {
  MyDetailsViewBody({super.key, required this.account});
  static GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final AccountModel account;
  String? firstName;
  String? lastName;
  String? dateOfBirth;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              CustomAccountListItemsAppBar(
                title: StringsManager.myDetails.tr(),
                backArrowOnPressed: () {
                  GoRouter.of(context).pop();
                },
              ),
              const Divider(),
              Expanded(
                  child: ListView(
                padding: EdgeInsets.zero,
                physics: const BouncingScrollPhysics(),
                children: [
                  MyDetailsImg(account: account),
                  MyDetailsForm(
                    formKey: formKey,
                    account: account,
                    onSaveFirstName: (value) {
                      firstName = value;
                    },
                    onSaveDateOfBirth: (value) {
                      if (value != null) {
                        dateOfBirth =
                            DateFormat('dd MMMM yyyy').parse(value).toString();
                      } else {
                        dateOfBirth = null;
                      }
                    },
                    onSaveLastName: (value) {
                      lastName = value;
                    },
                  ),
                ],
              )),
              SizedBox(
                height: 100.h,
              )
            ],
          ),
          Positioned(
              bottom: 25.h,
              left: 25.w,
              right: 25.w,
              child: SizedBox(
                width: double.infinity,
                height: 67.h,
                child: BlocListener<MyDetailsCubit, MyDetailsState>(
                  listener: (context, state) {
                    if (state is MyDetailsLoading) {
                      CustomLoadingIndicator.buildLoadingIndicator(context);
                    } else if (state is MyDetailsInfoFailure) {
                      GoRouter.of(context).pop();
                      GoRouter.of(context).pop();
                      CustomToastWidget.buildCustomToast(
                          context, state.errMessage, ToastType.failure, 200.h);
                    } else if (state is MyDetailsInfoSuccess) {
                      GoRouter.of(context).pop();
                      GoRouter.of(context).pop();
                      CustomToastWidget.buildCustomToast(context,
                          state.successMessage, ToastType.success, 200.h);
                      BlocProvider.of<AccountInfoCubit>(context)
                          .getUserProfile();
                    }
                  },
                  child: CustomElevatedBtn(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          BlocProvider.of<MyDetailsCubit>(context)
                              .updateProfileInfo(
                                  firstName, lastName, dateOfBirth);
                        }
                      },
                      txt: StringsManager.save.tr(),
                      style: Theme.of(context).textTheme.labelLarge!),
                ),
              ))
        ],
      ),
    );
  }
}
