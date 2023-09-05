import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/strings_manager.dart';
import '../../../../../core/widgets/custom_elevated_btn.dart';
import '../../../../account/presentation/view/widgets/custom_account_list_items_app_bar.dart';
import '../../view_model/location_cubit/location_cubit.dart';
import 'address_confirmation_form.dart';
import 'area_card.dart';
import 'google_map_thumbnail.dart';

class AddressConfirmViewBody extends StatelessWidget {
  AddressConfirmViewBody({super.key});
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Placemark locationName =
        BlocProvider.of<LocationCubit>(context).locationName;
    return Scaffold(
      body: Column(
        children: [
          const CustomAccountListItemsAppBar(
            title: "New Address",
          ),
          Expanded(
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 20.h,
                  ),
                ),
                GoogleMapThumbnail(
                    location: BlocProvider.of<LocationCubit>(context)
                        .currentLocation),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 10.h,
                  ),
                ),
                AreaCard(
                    placeName:
                        "${locationName.subAdministrativeArea} , ${locationName.administrativeArea}"),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 10.h,
                  ),
                ),
                AddressConfirmationForm(
                  formKey: formKey,
                  streetName: locationName.street!,
                )
              ],
            ),
          ),
          Padding(
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
                      
                      GoRouter.of(context).pop();
                    }
                  },
                  txt: StringsManager.save.tr(),
                  style: Theme.of(context).textTheme.labelLarge!),
            ),
          )
        ],
      ),
    );
  }
}
