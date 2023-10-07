import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/location_bloc/location_bloc.dart';

import '../../../../../../core/utils/strings_manager.dart';
import '../../../../../../core/widgets/custom_elevated_btn.dart';
import '../../../../../../core/widgets/custom_loading_indicator.dart';

class SaveAddressButton extends StatelessWidget {
  const SaveAddressButton({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 25.h,
        left: 25.w,
        right: 25.w,
      ),
      child: SizedBox(
        width: double.infinity,
        height: 67.h,
        child: CustomElevatedBtn(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                var capturedContext = context;
                showDialog(
                  context: capturedContext,
                  barrierDismissible: false,
                  builder: (capturedContext) {
                    return const Center(
                      child: CustomLoadingIndicator(),
                    );
                  },
                );
                BlocProvider.of<LocationBloc>(context).add(MapVisibility());

                GoRouter.of(capturedContext).pop();
                GoRouter.of(capturedContext).pop();
              }
            },
            txt: StringsManager.save.tr(),
            style: Theme.of(context).textTheme.labelLarge!),
      ),
    );
  }
}
