import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shop/data/models/thumbnail_grocery_item_model/thumbnail_grocery_item_model/thumbnail_grocery_item_model.dart';
import '../../../data/repos/explore_repo.dart';

part 'category_items_state.dart';

class CategoryItemsCubit extends Cubit<CategoryItemsState> {
  CategoryItemsCubit(this.exploreRepo) : super(CategoryItemsInitial());
  final ExploreRepo exploreRepo;
  bool first = true;
  Future<void> fetchCategoryItems(String id) async {
    if (first) {
      emit(CategoryItemsLoading());
      first = false;
    }
    var result = await exploreRepo.fetchCategoryItems(id);
    result.fold(
      (failure) => emit(
        CategoryItemsFailure(
          failure.errMessage,
        ),
      ),
      (categoryItems) => emit(
        CategoryItemsSuccess(
          categoryItems,
        ),
      ),
    );
  }
}
