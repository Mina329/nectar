import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/core/widgets/custom_toast_widget.dart';
import 'package:nectar/features/account/presentation/view%20model/account_info_cubit/account_info_cubit.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/address_cubit/address_cubit.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/delivery_address_cubit/delivery_address_cubit.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/location_bloc/location_bloc.dart';
import '../../../../../../core/widgets/custom_elevated_btn.dart';
import '../../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../../account/presentation/view/account view/widgets/custom_account_list_items_app_bar.dart';
import '../../../../data/models/placemark/placemark.dart';
import 'address_confirmation_form.dart';
import 'area_card.dart';
import 'google_map_thumbnail.dart';

// ignore: must_be_immutable
class AddressConfirmViewBody extends StatelessWidget {
  AddressConfirmViewBody({super.key});
  final formKey = GlobalKey<FormState>();
  late String? buildingNumber;
  late String? appartmentNumber;
  late String? floor;
  @override
  Widget build(BuildContext context) {
    final Placemark locationName =
        BlocProvider.of<LocationBloc>(context).currentLocationPlacemark;
    return WillPopScope(
      onWillPop: () async {
        GoRouter.of(context).pop();
        return false;
      },
      child: Scaffold(
        body: Column(
          children: [
            CustomAccountListItemsAppBar(
              title: StringsManager.newAddress.tr(),
              backArrowOnPressed: () {
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
                      child: Visibility(
                    visible: true,
                    child: GoogleMapThumbnail(
                        location: BlocProvider.of<LocationBloc>(context)
                            .currentLocation),
                  )),
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
                    onSavedAppartmentNumber: (p0) {
                      appartmentNumber = p0;
                    },
                    onSavedBuildingNumber: (p0) {
                      buildingNumber = p0;
                    },
                    onSavedFloor: (p0) {
                      floor = p0;
                    },
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
            Padding(
              padding: EdgeInsets.only(
                bottom: 25.h,
                left: 25.w,
                right: 25.w,
              ),
              child: SizedBox(
                width: double.infinity,
                height: 67.h,
                child: BlocListener<AddressCubit, AddressState>(
                  listener: (context, state) {
                    if (state is AddressLoading) {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return const CustomLoadingIndicator();
                        },
                      );
                    } else if (state is AddAddressSuccess) {
                      GoRouter.of(context).pop();
                      CustomToastWidget.buildCustomToast(
                          context,
                          state.response.data['message'],
                          ToastType.success,
                          200.h);
                      BlocProvider.of<AccountInfoCubit>(context)
                          .getUserProfile();
                      BlocProvider.of<DeliveryAddressCubit>(context)
                          .addAddedAddress(
                              id: state.response.data['data'][0]['id'],
                              buildingNumber: buildingNumber,
                              floor: floor,
                              apartmentNumber: appartmentNumber,
                              lat: BlocProvider.of<LocationBloc>(context)
                                  .currentLocation
                                  .latitude,
                              lng: BlocProvider.of<LocationBloc>(context)
                                  .currentLocation
                                  .longitude);
                      GoRouter.of(context).pop();
                    } else if (state is AddAddressFailure) {
                      GoRouter.of(context).pop();
                      CustomToastWidget.buildCustomToast(
                          context, state.errMessage, ToastType.failure, 200.h);
                    }
                  },
                  child: CustomElevatedBtn(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          BlocProvider.of<AddressCubit>(context).addAddress(
                              buildingNumber: buildingNumber,
                              floorNumber: floor,
                              apartmentNumber: appartmentNumber,
                              lat: BlocProvider.of<LocationBloc>(context)
                                  .currentLocation
                                  .latitude,
                              lng: BlocProvider.of<LocationBloc>(context)
                                  .currentLocation
                                  .longitude);
                        }
                      },
                      txt: StringsManager.save.tr(),
                      style: Theme.of(context).textTheme.labelLarge!),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
