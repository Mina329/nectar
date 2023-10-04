import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/thumbnail_grocery_item_model/thumbnail_grocery_item_model/thumbnail_grocery_item_model.dart';
import '../../../data/repos/shop_repo.dart';

part 'best_selling_state.dart';

class BestSellingCubit extends Cubit<BestSellingState> {
  BestSellingCubit(this.shopRepo) : super(BestSellingInitial());
  final ShopRepo shopRepo;
  bool first = true;
  Future<void> getBestSellingItems({required String language}) async {
    if (first) {
      emit(BestSellingLoading());
      first = false;
    }
    var result = await shopRepo.fetchAllGroceryItems(
        language: language, orderBy: "orderCount", perPage: "20", page: "1");
    result.fold((failure) {
      emit(
        BestSellingFailure(
          failure.errMessage,
        ),
      );
    }, (items) {
      emit(
        BestSellingSuccess(
          items,
        ),
      );
    });
  }
}
