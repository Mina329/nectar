import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nectar/features/shop/data/models/thumbnail_grocery_item_model/thumbnail_grocery_item_model/thumbnail_grocery_item_model.dart';

import '../../../data/repos/shop_repo.dart';

part 'exclusive_offer_details_state.dart';

class ExclusiveOfferDetailsCubit extends Cubit<ExclusiveOfferDetailsState> {
  ExclusiveOfferDetailsCubit(this.shopRepo)
      : super(ExclusiveOfferDetailsInitial());
  int page = 1;
  final ShopRepo shopRepo;
  Future<void> loadItems(String language) async {
    if (state is ExclusiveOfferDetailsLoading) return;
    final currentState = state;
    List<ThumbnailGroceryItemModel> oldItems = [];
    if (currentState is ExclusiveOfferDetailsLoaded) {
      oldItems = currentState.items;
    }
    emit(
      ExclusiveOfferDetailsLoading(oldItems, isFirstFetch: page == 1),
    );
    var result = await shopRepo.fetchAllGroceryItems(
        language: language,
        orderBy: "offerPrice",
        perPage: "15",
        page: "$page");
    result.fold((failure) => null, (newItems) {
      page++;
      final items = (state as ExclusiveOfferDetailsLoading).oldItems;
      items.addAll(newItems);
      emit(
        ExclusiveOfferDetailsLoaded(
          items,
        ),
      );
    });
  }
}
