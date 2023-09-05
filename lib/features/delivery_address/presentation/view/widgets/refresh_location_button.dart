import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../view_model/location_cubit/location_cubit.dart';

class RereshLocationButton extends StatelessWidget {
  const RereshLocationButton({
    super.key,
    required Completer<GoogleMapController> controller,
  }) : _controller = controller;

  final Completer<GoogleMapController> _controller;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 25.w,
      bottom: 100.h,
      child: Container(
        width: 50.w,
        height: 50.h,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: ColorManager.green,
        ),
        child: BlocListener<LocationCubit, LocationState>(
          listener: (context, state) async {
            final capturedContext = context;
            if (state is LocationRefreshSuccess) {
              final GoogleMapController controller = await _controller.future;
              await controller.animateCamera(
                CameraUpdate.newCameraPosition(
                  CameraPosition(
                    target:
                        // ignore: use_build_context_synchronously
                        BlocProvider.of<LocationCubit>(capturedContext)
                            .currentLocation,
                    zoom: 19,
                  ),
                ),
              );
            } else if (state is LocationRefreshFailure) {
              Fluttertoast.showToast(
                  msg:
                      "Please activate location services or check your internet connection");
            }
          },
          child: IconButton(
            onPressed: () async {
              await BlocProvider.of<LocationCubit>(context).refreshMyLocation();
            },
            icon: const Icon(
              Icons.my_location,
              color: ColorManager.whiteText,
            ),
          ),
        ),
      ),
    );
  }
}
