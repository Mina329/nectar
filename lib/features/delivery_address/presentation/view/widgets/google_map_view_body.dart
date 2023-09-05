import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nectar/core/cache/cache_helper.dart';
import 'package:nectar/core/cache/cache_keys_values.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/widgets/custom_elevated_btn.dart';
import 'package:nectar/features/delivery_address/presentation/view/widgets/refresh_location_button.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/location_cubit/location_cubit.dart';

import '../../../../../core/widgets/custom_loading_indicator.dart';
import 'google_map_app_bar.dart';

class GoogleMapViewBody extends StatefulWidget {
  const GoogleMapViewBody({super.key});

  @override
  State<GoogleMapViewBody> createState() => _GoogleMapViewBodyState();
}

class _GoogleMapViewBodyState extends State<GoogleMapViewBody> {
  final Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            zoomControlsEnabled: false,
            initialCameraPosition: CameraPosition(
              target: BlocProvider.of<LocationCubit>(context).currentLocation,
              zoom: 19,
            ),
            onMapCreated: (GoogleMapController controller) async {
              controller.setMapStyle(await rootBundle.loadString(
                "assets/map_styles/map_${CacheData.getData(key: CacheKeys.kDARKMODE) == CacheValues.DARK ? "dark" : "light"}.json",
              ));
              _controller.complete(controller);
            },
            onCameraMove: (position) {
              BlocProvider.of<LocationCubit>(context).currentLocation =
                  LatLng(position.target.latitude, position.target.longitude);
            },
          ),
          Center(
            child: Transform.translate(
              offset: const Offset(0, -15.0),
              child: Icon(
                Icons.push_pin_outlined,
                size: 30.sp,
                color: Colors.red,
              ),
            ),
          ),
          RereshLocationButton(controller: _controller),
          const GoogleMapAppBar(),
          Positioned(
            bottom: 25.h,
            left: 25.w,
            right: 25.w,
            child: SizedBox(
              width: 200.w,
              height: 67.h,
              child: BlocListener<LocationCubit, LocationState>(
                listener: (context, state) {
                  if (state is LocationNameLoading) {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return const CustomLoadingIndicator();
                      },
                    );
                  } else if (state is LocationNameSuccess) {
                    GoRouter.of(context).pushReplacement(
                      AppRouter.kAddressConfirmView,
                    );
                  } else if (state is LocationNameFailure) {
                    GoRouter.of(context).pop();
                    Fluttertoast.showToast(
                        msg:
                            "Please activate location services or check your internet connection");
                  }
                },
                child: CustomElevatedBtn(
                  onPressed: () async {
                    final capturedContext = context;
                    await BlocProvider.of<LocationCubit>(capturedContext)
                        .getPlaceName();
                  },
                  txt: "Confirm",
                  style: Theme.of(context).textTheme.labelLarge!,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
