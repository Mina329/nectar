import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nectar/features/cart/data/models/cart_model/item.dart';
import 'package:nectar/features/cart/data/repos/cart_repo.dart';

part 'cart_item_state.dart';

class CartItemCubit extends Cubit<CartItemState> {
  CartItemCubit(
      {required this.item, required this.quantity, required this.cartRepo})
      : super(CartItemInitial());
  final Item item;
  int quantity;
  final CartRepo cartRepo;

  Future<void> incrementItem() async {
    emit(CartItemLoading());
    var result =
        await cartRepo.addItemsToCart(itemId: item.item!.id!, quantity: 1);
    result.fold(
      (failure) => emit(
        CartItemFailure(
          failure.errMessage,
        ),
      ),
      (response) {
        quantity++;
        emit(
          CartItemSuccess(
            response.data['message'],
          ),
        );
      },
    );
  }

  Future<void> decrementItem() async {
    emit(CartItemLoading());
    var result = await cartRepo.updateItemsToCart(
        itemId: item.item!.id!, quantity: quantity - 1);
    result.fold(
      (failure) => emit(
        CartItemFailure(
          failure.errMessage,
        ),
      ),
      (response) {
        quantity--;
        emit(
          CartItemSuccess(
            response.data['message'],
          ),
        );
      },
    );
  }

  Future<void> deleteItem() async {
    emit(CartItemLoading());
    var result = await cartRepo.deleteItemFromCart(itemId: item.item!.id!);
    result.fold(
      (failure) => emit(
        CartItemFailure(
          failure.errMessage,
        ),
      ),
      (response) {
        quantity = 0;
        emit(
          CartItemSuccess(
            response.data['message'],
          ),
        );
      },
    );
  }
}
