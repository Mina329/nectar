import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../explore/data/models/category_item_model/category_item_model.dart';
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
    var result = await shopRepo.fetchAllGroceryItems(language, false);
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
