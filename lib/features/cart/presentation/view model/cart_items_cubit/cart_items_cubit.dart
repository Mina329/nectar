import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/cart_repo.dart';

part 'cart_items_state.dart';

class CartItemsCubit extends Cubit<CartItemsState> {
  CartItemsCubit(this._cartRepo) : super(CartItemsInitial());
  final CartRepo _cartRepo;

  Future<void> addItemsToCart(String itemId, int quantity) async {
    emit(CartItemsLoading());
    var result =
        await _cartRepo.addItemsToCart(itemId: itemId, quantity: quantity);
    result.fold(
      (failure) => emit(
        AddCartItemsFailure(
          failure.errMessage,
        ),
      ),
      (response) => emit(
        AddCartItemsSuccess(
          response.data['message'],
        ),
      ),
    );
  }

  Future<void> updateItemsToCart(String itemId, int quantity) async {
    emit(CartItemsLoading());
    var result =
        await _cartRepo.updateItemsToCart(itemId: itemId, quantity: quantity);
    result.fold(
      (failure) => emit(
        UpdateCartItemsFailure(
          failure.errMessage,
        ),
      ),
      (response) => emit(
        UpdateCartItemsSuccess(
          response.data['message'],
        ),
      ),
    );
  }

  Future<void> deletItemFromCart(String itemId) async {
    emit(CartItemsLoading());
    var result = await _cartRepo.deleteItemFromCart(itemId: itemId);
    result.fold(
      (failure) => emit(
        UpdateCartItemsFailure(
          failure.errMessage,
        ),
      ),
      (response) => emit(
        UpdateCartItemsSuccess(
          response.data['message'],
        ),
      ),
    );
  }
}
