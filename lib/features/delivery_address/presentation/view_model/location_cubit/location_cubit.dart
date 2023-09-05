import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationCubit() : super(LocationInitial());

  late Placemark locationName;

  late LatLng currentLocation;
  Future<void> refreshMyLocation() async {
    final status = await Permission.location.request();
    if (status.isGranted) {
      try {
        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );
        currentLocation = LatLng(
          position.latitude,
          position.longitude,
        );
      } catch (e) {
        print(e.toString());

        emit(LocationRefreshFailure());
      }
      emit(LocationRefreshSuccess());
    } else {
      emit(LocationRefreshFailure());
    }
  }

  Future<void> getCurrentLocation() async {
    emit(LocationLoading());
    final status = await Permission.location.request();
    if (status.isGranted) {
      try {
        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );
        currentLocation = LatLng(
          position.latitude,
          position.longitude,
        );
      } catch (e) {
        print(e.toString());

        emit(LocationFailure());
      }
      emit(LocationSuccess());
    } else {
      emit(LocationFailure());
    }
  }

  Future<void> getPlaceName() async {
    emit(LocationNameLoading());
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
          currentLocation.latitude, currentLocation.longitude);
      locationName = placemarks[1];
    } catch (e) {
      emit(LocationNameFailure());
      print(e.toString());
    }
    emit(LocationNameSuccess());
  }
}
