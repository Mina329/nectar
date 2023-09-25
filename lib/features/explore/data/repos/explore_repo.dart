import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../models/category_item_model/category_item_model.dart';
import '../models/category_model/category_model.dart';

abstract class ExploreRepo {
  Future<Either<Failure, List<CategoryModel>>> fetchCategories();
  Future<Either<Failure, List<CategoryItemModel>>> fetchCategoryItems(String categoryId);
}
