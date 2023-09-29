import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:nectar/core/errors/failure.dart';
import 'package:nectar/core/utils/api_service.dart';

import 'package:nectar/features/explore/data/models/category_item_model/category_item_model.dart';

import 'favourite_repo.dart';

class FavouriteRepoImpl extends FavouriteRepo {
  final ApiService _apiService;

  FavouriteRepoImpl(this._apiService);
  @override
  Future<Either<Failure, List<CategoryItemModel>>> fetchFavouriteItems() async {
    try {
      var data = await _apiService.get(endPoint: 'api/v1/profile/favorites');
      List<CategoryItemModel> favouriteItems = [];
      for (var item in data['data']) {
        favouriteItems.add(CategoryItemModel.fromJson(item));
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
