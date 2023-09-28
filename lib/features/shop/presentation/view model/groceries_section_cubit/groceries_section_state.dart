part of 'groceries_section_cubit.dart';

sealed class GroceriesSectionState extends Equatable {
  const GroceriesSectionState();

  @override
  List<Object> get props => [];
}

final class GroceriesSectionInitial extends GroceriesSectionState {}

final class GroceriesSectionLoading extends GroceriesSectionState {}

final class GroceriesSectionSuccess extends GroceriesSectionState {
  final List<CategoryItemModel> items;

  const GroceriesSectionSuccess(this.items);
}

final class GroceriesSectionFailure extends GroceriesSectionState {
  final String errMessage;

  const GroceriesSectionFailure(this.errMessage);
}
