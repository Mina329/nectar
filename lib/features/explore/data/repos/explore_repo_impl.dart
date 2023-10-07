import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:nectar/core/utils/api_service.dart';
import 'package:nectar/features/explore/data/repos/explore_repo.dart';

import '../../../../core/errors/failure.dart';
import '../../../shop/data/models/thumbnail_grocery_item_model/thumbnail_grocery_item_model/thumbnail_grocery_item_model.dart';
import '../models/category_model/category_model.dart';

class ExploreRepoImpl extends ExploreRepo {
  final ApiService _apiService;

  ExploreRepoImpl(this._apiService);

  @override
  Future<Either<Failure, List<CategoryModel>>> fetchCategories() async {
    try {
      var data = await _apiService.get(endPoint: "api/v1/categories?");
      List<CategoryModel> categories = [];
      for (var item in data["data"]) {
        categories.add(CategoryModel.fromJson(item));
      }
      return right(categories);
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
  Future<Either<Failure, List<ThumbnailGroceryItemModel>>> fetchCategoryItems(
      String categoryId) async {
    try {
      var data = await _apiService.get(
          endPoint: "api/v1/categories/$categoryId/items?");
      List<ThumbnailGroceryItemModel> categoryItems = [];
      for (var item in data["data"]) {
        categoryItems.add(ThumbnailGroceryItemModel.fromJson(item));
      }
      return right(categoryItems);
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
