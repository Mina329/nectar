part of 'best_selling_details_cubit.dart';

sealed class BestSellingDetailsState extends Equatable {
  const BestSellingDetailsState();

  @override
  List<Object> get props => [];
}

final class BestSellingDetailsInitial extends BestSellingDetailsState {}

final class BestSellingDetailsLoaded extends BestSellingDetailsState {
  final List<ThumbnailGroceryItemModel> items;

  const BestSellingDetailsLoaded(this.items);
}

final class BestSellingDetailsLoading extends BestSellingDetailsState {
  final List<ThumbnailGroceryItemModel> oldItems;
  final bool isFirstFetch;

  const BestSellingDetailsLoading(this.oldItems, {this.isFirstFetch = false});
}
