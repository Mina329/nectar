import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/cart_model/cart_model.dart';
import '../../../data/models/cart_model/item.dart';
import '../../../data/repos/cart_repo.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit(this._cartRepo, {this.totalPrice = 0}) : super(CartInitial());
  final CartRepo _cartRepo;
  late CartModel cart;
  double totalPrice;
  Future<void> getCart() async {
    emit(CartLoading());
    var result = await _cartRepo.fetchCart();
    result.fold(
      (failure) => emit(
        CartFailure(
          failure.errMessage,
        ),
      ),
      (cartModel) {
        cart = cartModel;
        emit(
          CartSuccess(
            cartModel,
          ),
        );
      },
    );
  }

  Future<void> refreshCart(String id) async {
    emit(CartLoading());
    List<Item> updatedItems = [];
    for (Item item in cart.items!) {
      if (item.item!.id == id) {
        continue;
      }
      updatedItems.add(item);
    }
    cart = cart.copyWith(items: updatedItems);
    emit(
      CartSuccess(
        cart,
      ),
    );
  }
// for (var item in cartModel.items!) {
//           if (item.item!.offerPrice != 0) {
//             totalPrice += item.item!.offerPrice!;
//             continue;
//           }
//           totalPrice += item.item!.price!;
//         }
}
