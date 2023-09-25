import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/category_model/category_model.dart';
import '../../../data/repos/explore_repo.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit(this.exploreRepo) : super(CategoriesInitial());
  final ExploreRepo exploreRepo;
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
}