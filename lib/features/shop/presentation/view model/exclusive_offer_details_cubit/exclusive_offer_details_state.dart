part of 'exclusive_offer_details_cubit.dart';

sealed class ExclusiveOfferDetailsState extends Equatable {
  const ExclusiveOfferDetailsState();

  @override
  List<Object> get props => [];
}

final class ExclusiveOfferDetailsInitial extends ExclusiveOfferDetailsState {}

final class ExclusiveOfferDetailsLoaded extends ExclusiveOfferDetailsState {
  final List<ThumbnailGroceryItemModel> items;

  const ExclusiveOfferDetailsLoaded(this.items);
}

final class ExclusiveOfferDetailsLoading extends ExclusiveOfferDetailsState {
  final List<ThumbnailGroceryItemModel> oldItems;
  final bool isFirstFetch;
  const ExclusiveOfferDetailsLoading(this.oldItems,
      {this.isFirstFetch = false});
}
