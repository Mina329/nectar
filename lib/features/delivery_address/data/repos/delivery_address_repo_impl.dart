import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nectar/core/errors/failure.dart';
import 'package:nectar/features/delivery_address/data/models/search_address_suggestion/search_address_suggestion.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../core/utils/api_service.dart';
import '../models/placemark/placemark.dart';
import 'delivery_address_repo.dart';

class DeliveryAddressRepoImpl extends DeliveryAddressRepo {
  final ApiService _apiService;

  DeliveryAddressRepoImpl(this._apiService);

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
      var data = await _apiService.getGeoCoding(
          latitude: latitude, longitude: longitude, language: language);
      Placemark placemark = Placemark.fromJson(data);
      return right(placemark);
    } catch (e) {
      return left(
        LocationServiceFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, SearchAddressSuggestion>> fetchSearchAddressSuggestion(
      String latitude, String longitude, String query) async {
    try {
      var data = await _apiService.getGeoSearchSuggestion(
          latitude: latitude, longitude: longitude, query: query);
      SearchAddressSuggestion suggestions =
          SearchAddressSuggestion.fromJson(data);
      return right(suggestions);
    } catch (e) {
      return left(
        LocationServiceFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Response>> deleteAddress(String id) async {
    try {
      var data = await _apiService
          .delete(endPoint: "api/v1/profile/addresses/$id", requestData: {});
      return right(data);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure(
            e.response!.data['message'],
          ),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Response>> postAddAddress(
      String? buildingNumber,
      String? floorNumber,
      String? apartmentNumber,
      double? lat,
      double? lng) async {
    try {
      Map<String, dynamic> requestData = {
        "lat": lat,
        "lng": lng,
        "apartmentNumber": apartmentNumber,
        "floorNumber": floorNumber,
        "buildingNumber": buildingNumber
      };
      var data = await _apiService.post(
          endPoint: "api/v1/profile/addresses", requestData: requestData);
      return right(data);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure(
            e.response!.data['message'],
          ),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, String>> patchDefaultAddress(String id) async {
    try {
      Map<String, dynamic> requestData = {"isDefault": true};
      var data = await _apiService.patch(
          endPoint: "api/v1/profile/addresses/$id", requestData: requestData);
      return right(data.data['message']);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure(
            e.response!.data['message'],
          ),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
