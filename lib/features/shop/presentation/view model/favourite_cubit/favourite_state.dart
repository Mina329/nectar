part of 'favourite_cubit.dart';

sealed class FavouriteState extends Equatable {
  const FavouriteState();

  @override
  List<Object> get props => [];
}

final class FavouriteInitial extends FavouriteState {}

final class FavouriteLoading extends FavouriteState {}

final class AddFavouriteSuccess extends FavouriteState {
  final String succeesMessage;

  const AddFavouriteSuccess(this.succeesMessage);
}

final class AddFavouriteFailure extends FavouriteState {
  final String errMessage;

  const AddFavouriteFailure(this.errMessage);
}

final class RemoveFavouriteSuccess extends FavouriteState {
  final String succeesMessage;

  const RemoveFavouriteSuccess(this.succeesMessage);
}

final class RemoveFavouriteFailure extends FavouriteState {
  final String errMessage;

  const RemoveFavouriteFailure(this.errMessage);
}
