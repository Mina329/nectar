import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../shop/data/models/thumbnail_grocery_item_model/thumbnail_grocery_item_model/thumbnail_grocery_item_model.dart';

abstract class FavouriteRepo {
  Future<Either<Failure, List<ThumbnailGroceryItemModel>>> fetchFavouriteItems();
}
