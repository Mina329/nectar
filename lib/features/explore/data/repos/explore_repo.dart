import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../models/category_model/category_model.dart';

abstract class ExploreRepo {
  Future<Either<Failure, List<CategoryModel>>> fetchCategories();
}
