part of 'add_favourite_items_to_cart_cubit.dart';

sealed class AddFavouriteItemsToCartState extends Equatable {
  const AddFavouriteItemsToCartState();

  @override
  List<Object> get props => [];
}

final class AddFavouriteItemsToCartInitial
    extends AddFavouriteItemsToCartState {}

final class AddItemToCartLoading extends AddFavouriteItemsToCartState {}

final class AddItemToCartFailure extends AddFavouriteItemsToCartState {
  final String errMessage;

  const AddItemToCartFailure(this.errMessage);
}

final class AddItemToCartSuccess extends AddFavouriteItemsToCartState {
  final String successMessage;

  const AddItemToCartSuccess(this.successMessage);
}
