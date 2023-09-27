import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar/features/explore/data/models/category_item_model/category_item_model.dart';
import 'package:nectar/features/shop/data/repos/shop_repo.dart';

part 'exclusive_offers_state.dart';

class ExclusiveOffersCubit extends Cubit<ExclusiveOffersState> {
  ExclusiveOffersCubit(this.shopRepo) : super(ExclusiveOffersInitial());
  final ShopRepo shopRepo;

  Future<void> getExclusiveOffersItems() async {
    emit(ExclusiveOffersLoading());
    var result = await shopRepo.fetchAllGroceryItems();
    List<CategoryItemModel> offersItems = [];
    result.fold((failure) {
      emit(ExclusiveOffersFailure(failure.errMessage));
    }, (items) {
      for (var item in items) {
        if (item.offerPrice != null) {
          offersItems.add(item);
        }
      }
      emit(ExclusiveOffersSuccess(offersItems));
    });
  }
}