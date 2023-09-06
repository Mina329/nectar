import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nectar/core/errors/failure.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../core/utils/api_service.dart';
import '../models/placemark/placemark.dart';
import 'delivery_address_repo.dart';

class DeliveryAddressRepoImpl extends DeliveryAddressRepo {
  final ApiService apiService;

  DeliveryAddressRepoImpl(this.apiService);

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
      String latitude, String longitude, String language) async {
    try {
      var data = await apiService.getGeoCoding(
          latitude: latitude, longitude: longitude, language: language);
      Placemark placemark = Placemark.fromJson(data);
      print("--------------------------------");
      return right(placemark);
    } catch (e) {
      return left(
        LocationServiceFailure(
          e.toString(),
        ),
      );
    }
  }
}
