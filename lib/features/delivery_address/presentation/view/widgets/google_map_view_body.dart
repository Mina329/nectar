import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nectar/core/cache/cache_helper.dart';
import 'package:nectar/core/cache/cache_keys_values.dart';
import 'package:nectar/features/delivery_address/presentation/view/widgets/refresh_location_button.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/location_cubit/location_cubit.dart';

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
          const GoogleMapSearchBar()
        ],
      ),
    );
  }

  Future<void> _handlePressSearch() async {
    
  }
}

class GoogleMapSearchBar extends StatelessWidget {
  const GoogleMapSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
