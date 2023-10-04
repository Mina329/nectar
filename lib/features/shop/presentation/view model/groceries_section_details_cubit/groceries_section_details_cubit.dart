import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/thumbnail_grocery_item_model/thumbnail_grocery_item_model/thumbnail_grocery_item_model.dart';
import '../../../data/repos/shop_repo.dart';

part 'groceries_section_details_state.dart';

class GroceriesSectionDetailsCubit extends Cubit<GroceriesSectionDetailsState> {
  GroceriesSectionDetailsCubit(this.shopRepo)
      : super(GroceriesSectionDetailsInitial());
  final ShopRepo shopRepo;
  int page = 1;
  Future<void> loadItems(String language) async {
    if (state is GroceriesSectionDetailsLoading) return;
    final currentState = state;
    List<ThumbnailGroceryItemModel> oldItems = [];
    if (currentState is GroceriesSectionDetailsLoaded) {
      oldItems = currentState.items;
    }
    emit(
      GroceriesSectionDetailsLoading(oldItems, isFirstFetch: page == 1),
    );
    var result = await shopRepo.fetchAllGroceryItems(
      language: language,
      orderBy: null,
      perPage: "15",
      page: "$page",
    );
    result.fold((failure) => null, (newItems) {
      page++;
      final items = (state as GroceriesSectionDetailsLoading).oldItems;
      items.addAll(newItems);
      emit(
        GroceriesSectionDetailsLoaded(
          items,
        ),
      );
    });
  }
}
