part of 'item_details_cubit.dart';

sealed class ItemDetailsState extends Equatable {
  const ItemDetailsState();

  @override
  List<Object> get props => [];
}

final class ItemDetailsInitial extends ItemDetailsState {}

final class ItemDetailsLoading extends ItemDetailsState {}

final class ItemDetailsSuccess extends ItemDetailsState {
  final GroceryItemModel item;

  const ItemDetailsSuccess(this.item);
}

final class ItemDetailsFailure extends ItemDetailsState {
  final String errMessage;

  const ItemDetailsFailure(this.errMessage);
}
