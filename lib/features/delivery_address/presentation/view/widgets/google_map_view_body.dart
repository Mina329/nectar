import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nectar/features/delivery_address/presentation/view/widgets/refresh_location_button.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/location_bloc/location_bloc.dart';
import 'confirm_map_button.dart';
import 'custom_google_map.dart';
import 'custom_location_pin.dart';
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
    final LatLng previousLocation =
        BlocProvider.of<LocationBloc>(context).currentLocation;

    return Scaffold(
      body: Stack(
        children: [
          CustomGoogleMap(controller: _controller),
          const CustomLoactionPin(),
          RereshLocationButton(controller: _controller),
          GoogleMapAppBar(previousLocation: previousLocation),
          const ConfirmMapButton(),
        ],
      ),
    );
  }
}
