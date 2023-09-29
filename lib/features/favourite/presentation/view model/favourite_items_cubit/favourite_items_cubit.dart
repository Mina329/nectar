import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../explore/data/models/category_item_model/category_item_model.dart';
import '../../../data/repos/favourite_repo.dart';

part 'favourite_items_state.dart';

class FavouriteItemsCubit extends Cubit<FavouriteItemsState> {
  FavouriteItemsCubit(this.favouriteRepo) : super(FavouriteItemsInitial());
  final FavouriteRepo favouriteRepo;
  Future<void> getFavouriteItems() async {
    emit(FavouriteItemsLoading());
    var result = await favouriteRepo.fetchFavouriteItems();
    result.fold(
      (failure) => emit(
        FavouriteItemsFailure(
          failure.errMessage,
        ),
      ),
      (favouriteItems) => emit(
        FavouriteItemsSuccess(
          favouriteItems,
        ),
      ),
    );
  }
}