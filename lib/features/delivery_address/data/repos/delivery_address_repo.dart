import 'package:dartz/dartz.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/errors/failure.dart';

abstract class DeliveryAddressRepo {
  Future<Either<Failure, LatLng>> fetchCurrentLocation();
  Future<Either<Failure, Placemark>> fetchLocationPlacemark(
      double latitude, double longitude);
}
