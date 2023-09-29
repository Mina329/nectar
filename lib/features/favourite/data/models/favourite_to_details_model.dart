import '../../presentation/view model/favourite_items_cubit/favourite_items_cubit.dart';

class FavouriteToDetailsModel {
  final String id;
  FavouriteItemsCubit? favouriteItemsCubit;

  FavouriteToDetailsModel(this.id, this.favouriteItemsCubit);
}
