import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:nectar/core/errors/failure.dart';
import 'package:nectar/core/utils/api_service.dart';
import 'package:nectar/features/explore/data/models/category_item_model/category_item_model.dart';
import 'package:nectar/features/shop/data/repos/shop_repo.dart';

class ShopRepoImpl extends ShopRepo {
  final ApiService apiService;

  ShopRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<CategoryItemModel>>>
      fetchAllGroceryItems() async {
    try {
      var data = await apiService.get(endPoint: 'api/v1/items');
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
}
