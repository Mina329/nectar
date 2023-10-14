import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../../../shop/data/models/thumbnail_grocery_item_model/thumbnail_grocery_item_model/thumbnail_grocery_item_model.dart';
import '../models/category_model/category_model.dart';

abstract class ExploreRepo {
  Future<Either<Failure, List<CategoryModel>>> fetchCategories();
  Future<Either<Failure, List<ThumbnailGroceryItemModel>>>
      fetchCategoryGroceryItems({
    required String page,
    required String perPage,
    required String categoryId,
  });
  Future<Either<Failure, List<ThumbnailGroceryItemModel>>>
      fetchSearchItems({
    required String page,
    required String perPage,
    required String query,
  });
}
