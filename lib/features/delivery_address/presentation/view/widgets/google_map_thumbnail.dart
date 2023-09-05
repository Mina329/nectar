import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../../core/cache/cache_helper.dart';
import '../../../../../core/cache/cache_keys_values.dart';
import '../../../../../core/utils/color_manager.dart';

class GoogleMapThumbnail extends StatelessWidget {
  GoogleMapThumbnail({
    super.key,
    required this.location,
  });

  final LatLng location;
  final Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: CacheData.getData(key: CacheKeys.kDARKMODE) ==
                    CacheValues.DARK
                ? ColorManager.borderColorDARK
                : ColorManager.borderColorLIGHT,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        height: 200.h,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: AbsorbPointer(
            absorbing: true,
            child: GoogleMap(
              gestureRecognizers: const {},
              mapType: MapType.normal,
              zoomControlsEnabled: false,
              zoomGesturesEnabled: false,
              initialCameraPosition:
                  CameraPosition(target: location, zoom: 18),
              markers: {
                Marker(
                  markerId: const MarkerId("currentLocation"),
                  position: location,
                )
              },
              onMapCreated: (GoogleMapController controller) async {
                controller.setMapStyle(await rootBundle.loadString(
                  "assets/map_styles/map_${CacheData.getData(key: CacheKeys.kDARKMODE) == CacheValues.DARK ? "dark" : "light"}.json",
                ));
                _controller.complete(controller);
              },
            ),
          ),
        ),
      ),
    );
  }
}
