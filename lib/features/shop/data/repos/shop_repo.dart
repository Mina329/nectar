import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/failure.dart';
import '../../../delivery_address/data/models/placemark/placemark.dart';
import '../models/grocery_item_model/grocery_item_model.dart';
import '../models/thumbnail_grocery_item_model/thumbnail_grocery_item_model/thumbnail_grocery_item_model.dart';

abstract class ShopRepo {
  Future<Either<Failure, List<ThumbnailGroceryItemModel>>> fetchAllGroceryItems(
      {required String? orderBy,
      String? filter,
      required String perPage,
      required String page});
  Future<Either<Failure, GroceryItemModel>> fetchItemById({
    required String id,
    required String language,
  });
  Future<Either<Failure, Response>> postAddFavouriteItem(String id);
  Future<Either<Failure, Response>> deleteRemoveFavouriteItem(String id);
  Future<Either<Failure, Placemark>> fetchCurrentCityCountry(String language);
}
