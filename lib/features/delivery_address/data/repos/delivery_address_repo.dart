import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/errors/failure.dart';
import '../models/placemark/placemark.dart';
import '../models/search_address_suggestion/search_address_suggestion.dart';

abstract class DeliveryAddressRepo {
  Future<Either<Failure, LatLng>> fetchCurrentLocation();
  Future<Either<Failure, Placemark>> fetchLocationPlacemark(
      String latitude, String longitude, String language);
  Future<Either<Failure, SearchAddressSuggestion>> fetchSearchAddressSuggestion(
      String latitude, String longitude, String query);
  Future<Either<Failure, Response>> deleteAddress(String id);
  Future<Either<Failure, Response>> postAddAddress(String? buildingNumber,
      String? floorNumber, String? apartmentNumber, double? lat, double? lng);
  Future<Either<Failure, String>> patchDefaultAddress(String id);
}
