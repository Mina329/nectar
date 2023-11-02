import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nectar/features/delivery_address/presentation/view/google%20map%20view/widgets/refresh_location_button.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/location_bloc/location_bloc.dart';
import '../../../../../../core/utils/app_router.dart';
import 'confirm_map_button.dart';
import 'custom_google_map.dart';
import 'custom_location_pin.dart';
import 'google_map_app_bar.dart';

class GoogleMapViewBody extends StatelessWidget {
   GoogleMapViewBody({super.key});

  final Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    final LatLng previousLocation =
        BlocProvider.of<LocationBloc>(context).currentLocation;

    return WillPopScope(
      onWillPop: () async {
        if (BlocProvider.of<LocationBloc>(context).fromChange) {
          final locationBloc = BlocProvider.of<LocationBloc>(context);
          BlocProvider.of<LocationBloc>(context).currentLocation =
              previousLocation;
          BlocProvider.of<LocationBloc>(context).fromChange = false;
          GoRouter.of(context).pushReplacement(AppRouter.kAddressConfirmView,
              extra: locationBloc);
        } else {
          GoRouter.of(context).pop();
        }
        return false;
      },
      child: Scaffold(
        body: Stack(
          children: [
            CustomGoogleMap(controller: _controller),
            const CustomLoactionPin(),
            RereshLocationButton(controller: _controller),
            GoogleMapAppBar(
              previousLocation: previousLocation,
              controller: _controller,
            ),
            const ConfirmMapButton(),
          ],
        ),
      ),
    );
  }
}
