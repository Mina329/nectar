import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../shop/data/models/thumbnail_grocery_item_model/thumbnail_grocery_item_model/thumbnail_grocery_item_model.dart';
import '../../../data/repos/explore_repo.dart';

part 'category_items_state.dart';

class CategoryItemsCubit extends Cubit<CategoryItemsState> {
  CategoryItemsCubit(this._exploreRepo) : super(CategoryItemsInitial());
  final ExploreRepo _exploreRepo;
  int page = 1;

  Future<void> loadItems(String categoryId) async {
    if (state is CategoryItemsLoading) return;
    final currentState = state;
    List<ThumbnailGroceryItemModel> oldItems = [];
    if (currentState is CategoryItemsLoaded) {
      oldItems = currentState.items;
    }
    emit(
      CategoryItemsLoading(oldItems, isFirstFetch: page == 1),
    );
    var result = await _exploreRepo.fetchCategoryGroceryItems(
        page: "$page", perPage: "15", categoryId: categoryId);
    result.fold(
        (failure) => emit(
              CategoryItemsFailure(
                failure.errMessage,
              ),
            ), (newItems) {
      page++;
      final items = (state as CategoryItemsLoading).oldItems;
      items.addAll(newItems);
      emit(
        CategoryItemsLoaded(
          items,
        ),
      );
    });
  }
}
