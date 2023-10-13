import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/cart_model/cart_model.dart';
import '../../../data/repos/cart_repo.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit(this._cartRepo, {this.totalPrice = 0}) : super(CartInitial());
  final CartRepo _cartRepo;
  double totalPrice;
  bool first = true;
  bool flag = true;
  Future<void> getCart() async {
    if (first) {
      emit(CartLoading());
      first = false;
    }
    var result = await _cartRepo.fetchCart();
    result.fold(
        (failure) => emit(
              CartFailure(
                failure.errMessage,
              ),
            ), (cartModel) {
      if (flag) {
        flag = !flag;
        return emit(
          CartSuccess1(
            cartModel,
          ),
        );
      } else {
        flag = !flag;
        return emit(
          CartSuccess2(
            cartModel,
          ),
        );
      }
    });
  }

// for (var item in cartModel.items!) {
//           if (item.item!.offerPrice != 0) {
//             totalPrice += item.item!.offerPrice!;
//             continue;
//           }
//           totalPrice += item.item!.price!;
//         }
}
