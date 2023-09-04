import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'delivery_address_state.dart';

class DeliveryAddressCubit extends Cubit<DeliveryAddressState> {
  List<Text> addresses = [];
  bool isFetched = true;

  DeliveryAddressCubit(super.initialState);

  void getAddresses() {
    emit(DeliveryAddressLoading());
    if (isFetched) {
      emit(DeliveryAddressSuccess());
    } else {
      emit(DeliveryAddressFailure());
    }
  }
}
