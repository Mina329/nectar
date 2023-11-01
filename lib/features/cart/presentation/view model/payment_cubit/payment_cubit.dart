import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/stripe_service.dart';
import '../../../data/repos/cart_repo.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this.stripeService, this._cartRepo) : super(PaymentInitial());
  final StripeService stripeService;
  final CartRepo _cartRepo;
  void initStripe(BuildContext context, String clientSecret,
      String publishableKey, String orderId) async {
    try {
      await stripeService.initPayment(
        context: context,
        clientSecret: clientSecret,
        publishableKey: publishableKey,
      );
      await _cartRepo.clearCart();
      emit(PaymentSuccess());
    } catch (e) {
      await _cartRepo.cancelOrder(orderId);
      emit(
        PaymentFailure(
          e.toString(),
        ),
      );
    }
  }
}
