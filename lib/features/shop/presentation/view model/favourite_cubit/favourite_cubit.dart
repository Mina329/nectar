import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar/features/shop/data/repos/shop_repo.dart';
part 'favourite_state.dart';

class FavouriteCubit extends Cubit<FavouriteState> {
  FavouriteCubit(this._shopRepo) : super(FavouriteInitial());
  final ShopRepo _shopRepo;

  Future<void> addFavouriteItem(String id) async {
    emit(FavouriteLoading());
    var result = await _shopRepo.postAddFavouriteItem(id);
    result.fold(
      (failure) => emit(
        AddFavouriteFailure(
          failure.errMessage,
        ),
      ),
      (response) => emit(
        AddFavouriteSuccess(),
      ),
    );
  }

  Future<void> removeFavouriteItem(String id) async {
    emit(FavouriteLoading());
    var result = await _shopRepo.deleteRemoveFavouriteItem(id);
    result.fold(
      (failure) => emit(
        RemoveFavouriteFailure(
          failure.errMessage,
        ),
      ),
      (response) => emit(
        RemoveFavouriteSuccess(),
      ),
    );
  }
}
