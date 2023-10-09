part of 'category_items_cubit.dart';

sealed class CategoryItemsState extends Equatable {
  const CategoryItemsState();

  @override
  List<Object> get props => [];
}

final class CategoryItemsInitial extends CategoryItemsState {}

final class CategoryItemsLoaded extends CategoryItemsState {
  final List<ThumbnailGroceryItemModel> items;

  const CategoryItemsLoaded(this.items);
}

final class CategoryItemsLoading extends CategoryItemsState {
  final List<ThumbnailGroceryItemModel> oldItems;
  final bool isFirstFetch;

  const CategoryItemsLoading(this.oldItems, {required this.isFirstFetch});
}

final class CategoryItemsFailure extends CategoryItemsState {
  final String errMessage;

  const CategoryItemsFailure(this.errMessage);
}
