import '../../../cart/presentation/view model/cart_cubit/cart_cubit.dart';
import '../../presentation/view model/favourite_items_cubit/favourite_items_cubit.dart';

class FavouriteToDetailsModel {
  final String id;
  FavouriteItemsCubit? favouriteItemsCubit;
  CartCubit? cartCubit;
  FavouriteToDetailsModel(this.id, this.favouriteItemsCubit, this.cartCubit);
}
