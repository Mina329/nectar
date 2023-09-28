import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../explore/data/models/category_item_model/category_item_model.dart';
import '../../../data/repos/shop_repo.dart';

part 'groceries_section_state.dart';

class GroceriesSectionCubit extends Cubit<GroceriesSectionState> {
  GroceriesSectionCubit(this.shopRepo) : super(GroceriesSectionInitial());
  final ShopRepo shopRepo;

  Future<void> getAllItems() async {
    emit(GroceriesSectionLoading());
    var result = await shopRepo.fetchAllGroceryItems();
    result.fold((failure) {
      emit(GroceriesSectionFailure(failure.errMessage));
    }, (items) => emit(GroceriesSectionSuccess(items)));
  }
}
