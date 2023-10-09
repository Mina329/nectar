import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar/features/shop/data/repos/shop_repo.dart';

import '../../../data/models/thumbnail_grocery_item_model/thumbnail_grocery_item_model/thumbnail_grocery_item_model.dart';

part 'exclusive_offers_state.dart';

class ExclusiveOffersCubit extends Cubit<ExclusiveOffersState> {
  ExclusiveOffersCubit(this.shopRepo) : super(ExclusiveOffersInitial());
  final ShopRepo shopRepo;
  bool first = true;

  Future<void> getExclusiveOffersItems({required String language}) async {
    if (first) {
      emit(ExclusiveOffersLoading());
      first = false;
    }
    var result = await shopRepo.fetchAllGroceryItems(
        orderBy: "offerPrice", perPage: "20", page: "1");
    result.fold((failure) {
      emit(ExclusiveOffersFailure(failure.errMessage));
    }, (items) {
      emit(ExclusiveOffersSuccess(items));
    });
  }
}
