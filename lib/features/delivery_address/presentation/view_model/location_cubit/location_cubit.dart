import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationCubit() : super(LocationInitial());

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
        emit(LocationRefreshSuccess());
      } catch (e) {
        emit(LocationRefreshFailure());
      }
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
        emit(LocationFailure());
      }
      emit(LocationSuccess());
    } else {
      emit(LocationFailure());
    }
  }
}
