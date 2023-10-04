import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/thumbnail_grocery_item_model/thumbnail_grocery_item_model/thumbnail_grocery_item_model.dart';
import '../../../data/repos/shop_repo.dart';

part 'best_selling_details_state.dart';

class BestSellingDetailsCubit extends Cubit<BestSellingDetailsState> {
  BestSellingDetailsCubit(this.shopRepo) : super(BestSellingDetailsInitial());
  final ShopRepo shopRepo;
  int page = 1;
  Future<void> loadItems(String language) async {
    if (state is BestSellingDetailsLoading) return;
    final currentState = state;
    List<ThumbnailGroceryItemModel> oldItems = [];
    if (currentState is BestSellingDetailsLoaded) {
      oldItems = currentState.items;
    }
    emit(
      BestSellingDetailsLoading(oldItems, isFirstFetch: page == 1),
    );
    var result = await shopRepo.fetchAllGroceryItems(
        language: language,
        orderBy: "orderCount",
        perPage: "15",
        page: "$page");
    result.fold((failure) => null, (newItems) {
      page++;
      final items = (state as BestSellingDetailsLoading).oldItems;
      items.addAll(newItems);
      emit(
        BestSellingDetailsLoaded(
          items,
        ),
      );
    });
  }
}
