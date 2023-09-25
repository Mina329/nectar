part of 'category_items_cubit.dart';

sealed class CategoryItemsState extends Equatable {
  const CategoryItemsState();

  @override
  List<Object> get props => [];
}

final class CategoryItemsInitial extends CategoryItemsState {}

final class CategoryItemsLoading extends CategoryItemsState {}

final class CategoryItemsFailure extends CategoryItemsState {
  final String errMessage;

  const CategoryItemsFailure(this.errMessage);
}

final class CategoryItemsSuccess extends CategoryItemsState {
  final List<CategoryItemModel> categoryItems;

  const CategoryItemsSuccess(this.categoryItems);
}
