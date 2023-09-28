import 'package:dartz/dartz.dart';
import 'package:nectar/features/explore/data/models/category_item_model/category_item_model.dart';

import '../../../../core/errors/failure.dart';
import '../models/grocery_item_model/grocery_item_model.dart';

abstract class ShopRepo {
  Future<Either<Failure, List<CategoryItemModel>>> fetchAllGroceryItems();
  Future<Either<Failure, GroceryItemModel>> fetchItemById(String id);
}
