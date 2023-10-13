import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shop/data/models/thumbnail_grocery_item_model/thumbnail_grocery_item_model/thumbnail_grocery_item_model.dart';
import '../../../data/repos/favourite_repo.dart';

part 'favourite_items_state.dart';

class FavouriteItemsCubit extends Cubit<FavouriteItemsState> {
  FavouriteItemsCubit(this.favouriteRepo) : super(FavouriteItemsInitial());
  final FavouriteRepo favouriteRepo;
  List<String> favouriteItemsIds = [];
  Future<void> getFavouriteItems() async {
    favouriteItemsIds = [];
    emit(FavouriteItemsLoading());
    var result = await favouriteRepo.fetchFavouriteItems();
    result.fold(
      (failure) => emit(
        FavouriteItemsFailure(
          failure.errMessage,
        ),
      ),
      (favouriteItems) {
        for (var item in favouriteItems) {
          favouriteItemsIds.add(item.id!);
        }
        emit(
          FavouriteItemsSuccess(
            favouriteItems,
          ),
        );
      },
    );
  }
}
