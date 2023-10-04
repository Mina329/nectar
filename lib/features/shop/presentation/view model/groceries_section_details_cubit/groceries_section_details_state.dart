part of 'groceries_section_details_cubit.dart';

sealed class GroceriesSectionDetailsState extends Equatable {
  const GroceriesSectionDetailsState();

  @override
  List<Object> get props => [];
}

final class GroceriesSectionDetailsInitial
    extends GroceriesSectionDetailsState {}

final class GroceriesSectionDetailsLoaded extends GroceriesSectionDetailsState {
  final List<ThumbnailGroceryItemModel> items;

  const GroceriesSectionDetailsLoaded(this.items);
}

final class GroceriesSectionDetailsLoading
    extends GroceriesSectionDetailsState {
  final List<ThumbnailGroceryItemModel> oldItems;
  final bool isFirstFetch;

  const GroceriesSectionDetailsLoading(this.oldItems,
      {this.isFirstFetch = false});
}
