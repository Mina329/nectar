part of 'favourite_items_cubit.dart';

sealed class FavouriteItemsState extends Equatable {
  const FavouriteItemsState();

  @override
  List<Object> get props => [];
}

final class FavouriteItemsInitial extends FavouriteItemsState {}

final class FavouriteItemsLoading extends FavouriteItemsState {}

final class FavouriteItemsFailure extends FavouriteItemsState {
  final String errMessage;

  const FavouriteItemsFailure(this.errMessage);
}

final class FavouriteItemsSuccess extends FavouriteItemsState {
  final List<CategoryItemModel> favouriteItems;

  const FavouriteItemsSuccess(this.favouriteItems);
}
