import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../cart/data/repos/cart_repo.dart';

part 'add_to_cart_state.dart';

class AddToCartCubit extends Cubit<AddToCartState> {
  AddToCartCubit(this.cartRepo) : super(AddToCartInitial());
  final CartRepo cartRepo;

  Future<void> addToCart(String id, int quantity) async {
    emit(AddToCartLoading());
    var result = await cartRepo.addItemsToCart(itemId: id, quantity: quantity);
    result.fold(
      (failure) => emit(
        AddToCartFailure(
          failure.errMessage,
        ),
      ),
      (response) => emit(
        AddToCartSuccess(
          response.data['message'],
        ),
      ),
    );
  }
}
