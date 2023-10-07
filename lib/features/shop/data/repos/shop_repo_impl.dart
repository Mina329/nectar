import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:nectar/core/errors/failure.dart';
import 'package:nectar/core/utils/api_service.dart';
import 'package:nectar/features/shop/data/models/grocery_item_model/grocery_item_model.dart';
import 'package:nectar/features/shop/data/repos/shop_repo.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../delivery_address/data/models/placemark/placemark.dart';
import '../models/thumbnail_grocery_item_model/thumbnail_grocery_item_model/thumbnail_grocery_item_model.dart';

class ShopRepoImpl extends ShopRepo {
  final ApiService _apiService;

  ShopRepoImpl(this._apiService);
  @override
  Future<Either<Failure, List<ThumbnailGroceryItemModel>>> fetchAllGroceryItems(
      {required String language,
      required String? orderBy,
      required String page,
      required String perPage}) async {
    try {
      var data = await _apiService.get(
          endPoint:
              'api/v1/items?${orderBy != null ? '&orderBy=$orderBy' : ''}&page=$page&perPage=$perPage&');
      List<ThumbnailGroceryItemModel> items = [];
      for (var item in data['data']['items']) {
        items.add(ThumbnailGroceryItemModel.fromJson(item));
      }
      return right(items);
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
  Future<Either<Failure, GroceryItemModel>> fetchItemById({
    required String id,
    required String language,
  }) async {
    try {
      var data =
          await _apiService.get(endPoint: "api/v1/items/$id?");

      return right(GroceryItemModel.fromJson(data['data']));
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
  Future<Either<Failure, Response>> postAddFavouriteItem(String id) async {
    try {
      Map<String, dynamic> requestData = {"itemId": id};
      var data = await _apiService.post(
          endPoint: "api/v1/profile/favorites", requestData: requestData);
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
  Future<Either<Failure, Response>> deleteRemoveFavouriteItem(String id) async {
    try {
      var data = await _apiService
          .delete(endPoint: "api/v1/profile/favorites/$id", requestData: {});
      return right(data);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(
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
