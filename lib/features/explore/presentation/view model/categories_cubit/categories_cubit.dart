import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shop/data/models/thumbnail_grocery_item_model/thumbnail_grocery_item_model/thumbnail_grocery_item_model.dart';
import '../../../data/models/category_model/category_model.dart';
import '../../../data/repos/explore_repo.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit(this.exploreRepo) : super(CategoriesInitial());
  final ExploreRepo exploreRepo;
  bool isFirst = true;
  late String query;
  bool searched = false;
  final List<Color> colors = [
    const Color(0xff59A5C6),
    const Color(0xffFFCE54),
    const Color(0xffFF5733),
    const Color(0xff2ECC71),
    const Color(0xff8E44AD),
  ];
  Future<void> fetchCategories() async {
    emit(CategoriesLoading());
    var result = await exploreRepo.fetchCategories();
    result.fold(
      (failure) => emit(
        CategoriesFailure(
          failure.errMessage,
        ),
      ),
      (categories) => emit(
        CategoriesSuccess(
          categories,
        ),
      ),
    );
  }

  int page = 1;
  Future<void> loadItems() async {
    if (state is SearchItemsLoading) return;

    if (page == 1) {
      emit(const SearchItemsLoading([], isFirstFetch: true));
    } else {
      emit(SearchItemsLoading((state as SearchItemsSuccess).items,
          isFirstFetch: false));
    }

    var result = await exploreRepo.fetchSearchItems(
      page: "$page",
      perPage: "15",
      query: query,
    );
    result.fold(
      (failure) => emit(
        CategoriesFailure(
          failure.errMessage,
        ),
      ),
      (newItems) {
        if (page == 1) {
          emit(SearchItemsSuccess(newItems));
        } else {
          final items = (state as SearchItemsLoading).oldItems;
          items.addAll(newItems);
          emit(SearchItemsSuccess(items));
        }
        page++;
      },
    );
  }
}
