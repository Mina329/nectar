import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/thumbnail_grocery_item_model/thumbnail_grocery_item_model/thumbnail_grocery_item_model.dart';
import '../../../data/repos/shop_repo.dart';

part 'groceries_section_state.dart';

class GroceriesSectionCubit extends Cubit<GroceriesSectionState> {
  GroceriesSectionCubit(this.shopRepo) : super(GroceriesSectionInitial());
  final ShopRepo shopRepo;
  bool first = true;

  Future<void> getAllItems({required String language}) async {
    if (first) {
      emit(GroceriesSectionLoading());
      first = false;
    }
    var result = await shopRepo.fetchAllGroceryItems(
        language: language, orderBy: null, perPage: "20", page: "1");
    result.fold(
      (failure) {
        emit(
          GroceriesSectionFailure(
            failure.errMessage,
          ),
        );
      },
      (items) => emit(
        GroceriesSectionSuccess(
          items,
        ),
      ),
    );
  }
}
