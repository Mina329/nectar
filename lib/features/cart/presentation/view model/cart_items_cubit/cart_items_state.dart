part of 'cart_items_cubit.dart';

sealed class CartItemsState extends Equatable {
  const CartItemsState();

  @override
  List<Object> get props => [];
}

final class CartItemsInitial extends CartItemsState {}

final class AddCartItemsSuccess extends CartItemsState {
  final String successMessage;

  const AddCartItemsSuccess(this.successMessage);
}

final class AddCartItemsFailure extends CartItemsState {
  final String errMessage;

  const AddCartItemsFailure(this.errMessage);
}

final class CartItemsLoading extends CartItemsState {}

final class UpdateCartItemsSuccess extends CartItemsState {
  final String successMessage;

  const UpdateCartItemsSuccess(this.successMessage);
}

final class UpdateCartItemsFailure extends CartItemsState {
  final String errMessage;

  const UpdateCartItemsFailure(this.errMessage);
}

final class DeleteCartItemsSuccess extends CartItemsState {
  final String successMessage;

  const DeleteCartItemsSuccess(this.successMessage);
}

final class DeleteCartItemsFailure extends CartItemsState {
  final String errMessage;

  const DeleteCartItemsFailure(this.errMessage);
}
