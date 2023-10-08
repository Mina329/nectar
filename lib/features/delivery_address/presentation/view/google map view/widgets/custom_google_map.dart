import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../../../core/cache/cache_helper.dart';
import '../../../../../../core/cache/cache_keys_values.dart';
import '../../../view_model/location_bloc/location_bloc.dart';

class CustomGoogleMap extends StatelessWidget {
  const CustomGoogleMap({
    super.key,
    required Completer<GoogleMapController> controller,
  }) : _controller = controller;

  final Completer<GoogleMapController> _controller;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationBloc, LocationState>(
      builder: (context, state) {
        return Visibility(
          visible: true,
          child: buildGoogleMap(context),
        );
      },
    );
  }

  GoogleMap buildGoogleMap(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      zoomControlsEnabled: false,
      initialCameraPosition: CameraPosition(
        target: BlocProvider.of<LocationBloc>(context).currentLocation,
        zoom: 19,
      ),
      onMapCreated: (GoogleMapController controller) async {
        controller.setMapStyle(await rootBundle.loadString(
          "assets/map_styles/map_${CacheData.getData(key: CacheKeys.kDARKMODE) == CacheValues.DARK ? "dark" : "light"}.json",
        ));
        _controller.complete(controller);
      },
      onCameraMove: (position) {
        BlocProvider.of<LocationBloc>(context).currentLocation =
            LatLng(position.target.latitude, position.target.longitude);
      },
    );
  }
}
