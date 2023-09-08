import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/features/delivery_address/presentation/view/widgets/save_address_button.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/location_bloc/location_bloc.dart';
import '../../../../account/presentation/view/widgets/custom_account_list_items_app_bar.dart';
import '../../../data/models/placemark/placemark.dart';
import 'address_confirmation_form.dart';
import 'area_card.dart';
import 'google_map_thumbnail.dart';

class AddressConfirmViewBody extends StatelessWidget {
  AddressConfirmViewBody({super.key});
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Placemark locationName =
        BlocProvider.of<LocationBloc>(context).currentLocationPlacemark;
    return WillPopScope(
      onWillPop: () async {
        BlocProvider.of<LocationBloc>(context).add(MapVisibility());
        GoRouter.of(context).pop();
        return false;
      },
      child: Scaffold(
        body: Column(
          children: [
            CustomAccountListItemsAppBar(
              title: StringsManager.newAddress.tr(),
              backArrowOnPressed: () {
                BlocProvider.of<LocationBloc>(context).add(MapVisibility());
                GoRouter.of(context).pop();
              },
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
                  SliverToBoxAdapter(
                    child: BlocBuilder<LocationBloc, LocationState>(
                      builder: (context, state) {
                        if (state is MapVisibilityLoading) {
                          return Visibility(
                            visible: false,
                            child: GoogleMapThumbnail(
                                location: BlocProvider.of<LocationBloc>(context)
                                    .currentLocation),
                          );
                        }
                        return Visibility(
                          visible: true,
                          child: GoogleMapThumbnail(
                              location: BlocProvider.of<LocationBloc>(context)
                                  .currentLocation),
                        );
                      },
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 10.h,
                    ),
                  ),
                  AreaCard(
                      placeName:
                          "${locationName.results?[0].components?.neighbourhood ?? ' '} "
                          "${locationName.results?[0].components?.state ?? ' '} "
                          "${locationName.results?[0].components?.city ?? ' '} "),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 10.h,
                    ),
                  ),
                  AddressConfirmationForm(
                    formKey: formKey,
                    streetName: locationName.results?[0] == null
                        ? ''
                        : locationName.results![0].components == null
                            ? ''
                            : locationName.results![0].components!.road == null
                                ? ''
                                : locationName.results![0].components!.road!,
                    buildingNumber: locationName.results?[0] == null
                        ? ''
                        : locationName.results![0].components == null
                            ? ''
                            : locationName
                                        .results![0].components!.houseNumber ==
                                    null
                                ? ''
                                : locationName
                                    .results![0].components!.houseNumber!,
                  )
                ],
              ),
            ),
            SaveAddressButton(formKey: formKey)
          ],
        ),
      ),
    );
  }
}
