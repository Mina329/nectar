import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:nectar/core/errors/failure.dart';
import 'package:nectar/core/utils/api_service.dart';

import 'package:nectar/features/shop/data/models/thumbnail_grocery_item_model/thumbnail_grocery_item_model/thumbnail_grocery_item_model.dart';

import 'favourite_repo.dart';

class FavouriteRepoImpl extends FavouriteRepo {
  final ApiService _apiService;

  FavouriteRepoImpl(this._apiService);
  @override
  Future<Either<Failure, List<ThumbnailGroceryItemModel>>>
      fetchFavouriteItems() async {
    try {
      var data = await _apiService.get(endPoint: 'api/v1/profile/favorites?');
      List<ThumbnailGroceryItemModel> favouriteItems = [];
      for (var item in data['data']) {
        favouriteItems.add(ThumbnailGroceryItemModel.fromJson(item));
      }
      return right(favouriteItems);
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
}
