import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/widgets/custom_toast_widget.dart';
import '../../../view_model/location_bloc/location_bloc.dart';

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
        child: BlocListener<LocationBloc, LocationState>(
          listener: (context, state) async {
            final capturedContext = context;
            if (state is RefreshMyCurrentLocationSuccess) {
              final GoogleMapController controller = await _controller.future;
              await controller.animateCamera(
                CameraUpdate.newCameraPosition(
                  CameraPosition(
                    target:
                        // ignore: use_build_context_synchronously
                        BlocProvider.of<LocationBloc>(capturedContext)
                            .currentLocation,
                    zoom: 19,
                  ),
                ),
              );
            } else if (state is RefreshMyCurrentLocationFailure) {
              CustomToastWidget.buildCustomToast(context,
                            state.errMessage, ToastType.failure, 200.h);
            }
          },
          child: IconButton(
            onPressed: () {
              BlocProvider.of<LocationBloc>(context)
                  .add(RefreshMyCurrentLocation());
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
