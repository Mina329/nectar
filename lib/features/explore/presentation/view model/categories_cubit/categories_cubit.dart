import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/category_model/category_model.dart';
import '../../../data/repos/explore_repo.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit(this.exploreRepo) : super(CategoriesInitial());
  final ExploreRepo exploreRepo;

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
}
