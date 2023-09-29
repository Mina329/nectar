import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:nectar/core/errors/failure.dart';
import 'package:nectar/core/utils/api_service.dart';
import 'package:nectar/features/explore/data/models/category_item_model/category_item_model.dart';
import 'package:nectar/features/shop/data/models/grocery_item_model/grocery_item_model.dart';
import 'package:nectar/features/shop/data/repos/shop_repo.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../delivery_address/data/models/placemark/placemark.dart';

class ShopRepoImpl extends ShopRepo {
  final ApiService _apiService;

  ShopRepoImpl(this._apiService);
  @override
  Future<Either<Failure, List<CategoryItemModel>>>
      fetchAllGroceryItems() async {
    try {
      var data = await _apiService.get(endPoint: 'api/v1/items');
      List<CategoryItemModel> items = [];
      for (var item in data['data']) {
        items.add(CategoryItemModel.fromJson(item));
      }
      return right(items);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(
            e,
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
  Future<Either<Failure, GroceryItemModel>> fetchItemById(String id) async {
    try {
      var data = await _apiService.get(endPoint: "api/v1/items/$id");

      return right(GroceryItemModel.fromJson(data['data']));
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(
            e,
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
  Future<Either<Failure, Response>> postAddFavouriteItem(String id) async {
    try {
      Map<String, dynamic> requestData = {"itemId": id};
      var data = await _apiService.post(
          endPoint: "api/v1/profile/favorites", requestData: requestData);
      return right(data);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(
            e,
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
  Future<Either<Failure, Response>> deleteRemoveFavouriteItem(String id) async {
    try {
      var data = await _apiService
          .delete(endPoint: "api/v1/profile/favorites/$id", requestData: {});
      return right(data);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(
            e,
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
  Future<Either<Failure, Placemark>> fetchCurrentCityCountry(
      String language) async {
    try {
      final status = await Permission.location.request();
      if (status.isGranted) {
        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );
        var data = await _apiService.getGeoCoding(
            latitude: position.latitude.toString(),
            longitude: position.longitude.toString(),
            language: language);
        Placemark placemark = Placemark.fromJson(data);
        return right(placemark);
      } else {
        return left(LocationServiceFailure("Permission not granted"));
      }
    } catch (e) {
      return left(LocationServiceFailure(e.toString()));
    }
  }
}
