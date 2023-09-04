part of 'delivery_address_cubit.dart';

@immutable
sealed class DeliveryAddressState {}


final class DeliveryAddressLoading extends DeliveryAddressState {}

final class DeliveryAddressSuccess extends DeliveryAddressState {}

final class DeliveryAddressFailure extends DeliveryAddressState {}
