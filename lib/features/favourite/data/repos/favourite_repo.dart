import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../explore/data/models/category_item_model/category_item_model.dart';

abstract class FavouriteRepo {
  Future<Either<Failure, List<CategoryItemModel>>> fetchFavouriteItems();
}
