part of 'address_cubit.dart';

sealed class AddressState extends Equatable {
  const AddressState();

  @override
  List<Object> get props => [];
}

final class AddressInitial extends AddressState {}

final class AddAddressSuccess extends AddressState {
  final Response response;

  const AddAddressSuccess(this.response);
}

final class AddAddressFailure extends AddressState {
  final String errMessage;

  const AddAddressFailure(this.errMessage);
}

final class AddressLoading extends AddressState {}

final class DeleteAddressSuccess extends AddressState {
  final String successMessage;

  const DeleteAddressSuccess(this.successMessage);
}

final class DeleteAddressFailure extends AddressState {
  final String errMessage;

  const DeleteAddressFailure(this.errMessage);
}

final class DefaultAddressLoading extends AddressState {}

final class DefaultAddressFailure extends AddressState {
  final String errMessage;

  const DefaultAddressFailure(this.errMessage);
}

final class DefaultAddressSuccess extends AddressState {
  final String successMessage;

  const DefaultAddressSuccess(this.successMessage);
}
