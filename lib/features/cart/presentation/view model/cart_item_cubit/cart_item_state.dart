part of 'cart_item_cubit.dart';

sealed class CartItemState extends Equatable {
  const CartItemState();

  @override
  List<Object> get props => [];
}

final class CartItemInitial extends CartItemState {}

final class CartItemLoading extends CartItemState {}

final class CartItemSuccess extends CartItemState {
  final String successMessage;

  const CartItemSuccess(this.successMessage);
}

final class CartItemFailure extends CartItemState {
  final String errMessage;

  const CartItemFailure(this.errMessage);
}
