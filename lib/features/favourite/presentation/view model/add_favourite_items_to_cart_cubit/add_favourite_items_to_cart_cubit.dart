import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../cart/data/repos/cart_repo.dart';

part 'add_favourite_items_to_cart_state.dart';

class AddFavouriteItemsToCartCubit extends Cubit<AddFavouriteItemsToCartState> {
  AddFavouriteItemsToCartCubit(this._cartRepo)
      : super(AddFavouriteItemsToCartInitial());
  final CartRepo _cartRepo;

  Future<void> addItemsToCart(List<String> favouriteItemsIds) async {
    for (var itemId in favouriteItemsIds) {
      await Future.delayed(
        const Duration(milliseconds: 500),
      );
      emit(AddItemToCartLoading());
      var result = await _cartRepo.addItemsToCart(itemId: itemId, quantity: 1);
      result.fold((failure) {
        emit(
          AddItemToCartFailure(
            failure.errMessage,
          ),
        );
      }, (response) {
        emit(
          AddItemToCartSuccess(response.data['message']),
        );
      });
    }
  }
}
