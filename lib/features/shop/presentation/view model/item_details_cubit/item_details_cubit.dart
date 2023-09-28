import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/grocery_item_model/grocery_item_model.dart';
import '../../../data/repos/shop_repo.dart';

part 'item_details_state.dart';

class ItemDetailsCubit extends Cubit<ItemDetailsState> {
  ItemDetailsCubit(this.shopRepo) : super(ItemDetailsInitial());
  final ShopRepo shopRepo;
  bool first = true;

  Future<void> getItemById(String id) async {
    if (first) {
      emit(ItemDetailsLoading());
      first = false;
    }
    var result = await shopRepo.fetchItemById(id);
    result.fold(
      (failure) {
        emit(
          ItemDetailsFailure(
            failure.errMessage,
          ),
        );
      },
      (item) => emit(
        ItemDetailsSuccess(
          item,
        ),
      ),
    );
  }
}
