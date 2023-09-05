import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nectar/features/delivery_address/data/repos/delivery_address_repo.dart';

part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final DeliveryAddressRepo deliveryAddressRepo;
  late LatLng currentLocation;
  late Placemark currentLocationPlacemark;
  bool fromChange = false;

  LocationBloc(this.deliveryAddressRepo) : super(LocationInitial()) {
    on<LocationEvent>((event, emit) async {
      if (event is GetMyCurrentLocation) {
        emit(GetMyCurrentLocationLoading());
        var result = await deliveryAddressRepo.fetchCurrentLocation();
        result.fold(
          (failure) => emit(
            GetMyCurrentLocationFailure(failure.errMessage),
          ),
          (location) {
            currentLocation = location;
            emit(
              GetMyCurrentLocationSuccess(location),
            );
          },
        );
      } else if (event is RefreshMyCurrentLocation) {
        var result = await deliveryAddressRepo.fetchCurrentLocation();
        result.fold(
          (failure) => emit(
            RefreshMyCurrentLocationFailure(failure.errMessage),
          ),
          (location) {
            currentLocation = location;
            emit(
              RefreshMyCurrentLocationSuccess(location),
            );
          },
        );
      } else if (event is GetPlacemark) {
        emit(PlacemarkLoading());
        var result = await deliveryAddressRepo.fetchLocationPlacemark(
            event.latitude, event.longitude);
        result.fold(
          (failure) => emit(
            PlacemarkFailure(failure.errMessage),
          ),
          (placemark) {
            currentLocationPlacemark = placemark;
            emit(
              PlacemarkSuccess(placemark),
            );
          },
        );
      } else if (event is MapVisibility) {
        emit(MapVisibilityLoading());
        await Future.delayed(const Duration(seconds: 1));
        emit(MapVisibilitySuccess());
      }
    });
  }
}
