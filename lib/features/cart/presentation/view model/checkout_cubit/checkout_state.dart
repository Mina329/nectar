part of 'checkout_cubit.dart';

sealed class CheckoutState extends Equatable {
  const CheckoutState();

  @override
  List<Object> get props => [];
}

final class CheckoutInitial extends CheckoutState {}

final class CheckoutLoading extends CheckoutState {}

final class CheckoutFailure extends CheckoutState {
  final String errMessage;

  const CheckoutFailure(this.errMessage);
}

final class CheckoutSuccess extends CheckoutState {
  final CheckoutModel checkoutModel;

  const CheckoutSuccess(this.checkoutModel);
}
