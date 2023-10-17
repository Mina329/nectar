import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nectar/features/cart/data/models/checkout_model/checkout_model.dart';
import 'package:nectar/features/cart/data/repos/cart_repo.dart';

part 'checkout_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  CheckoutCubit(this._cartRepo) : super(CheckoutInitial());
  final CartRepo _cartRepo;
  Future<void> checkoutCart() async {
    emit(CheckoutLoading());
    var result = await _cartRepo.checkoutCart();
    result.fold(
      (failure) => emit(
        CheckoutFailure(
          failure.errMessage,
        ),
      ),
      (checkoutModel) => emit(
        CheckoutSuccess(
          checkoutModel,
        ),
      ),
    );
  }
}
