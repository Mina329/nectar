import 'package:dartz/dartz.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nectar/core/errors/failure.dart';
import 'package:permission_handler/permission_handler.dart';

import 'delivery_address_repo.dart';

class DeliveryAddressRepoImpl extends DeliveryAddressRepo {
  @override
  Future<Either<Failure, LatLng>> fetchCurrentLocation() async {
    try {
      final status = await Permission.location.request();
      if (status.isGranted) {
        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );
        return right(
          LatLng(
            position.latitude,
            position.longitude,
          ),
        );
      } else {
        return left(LocationServiceFailure("Permission not granted"));
      }
    } catch (e) {
      return left(LocationServiceFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Placemark>> fetchLocationPlacemark(
      double latitude, double longitude) async {
    try {
      List<Placemark> placemarks =
          await placemarkFromCoordinates(latitude, longitude);
      return right(placemarks[1]);
    } catch (e) {
      return left(
        LocationServiceFailure(
          e.toString(),
        ),
      );
    }
  }
}
