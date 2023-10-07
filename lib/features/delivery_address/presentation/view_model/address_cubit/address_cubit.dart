import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repos/delivery_address_repo.dart';

part 'address_state.dart';

class AddressCubit extends Cubit<AddressState> {
  AddressCubit(this._deliveryAddressRepo) : super(AddressInitial());
  final DeliveryAddressRepo _deliveryAddressRepo;

  Future<void> deleteAddress(String id) async {
    emit(AddressLoading());
    var result = await _deliveryAddressRepo.deleteAddress(id);
    result.fold(
      (failure) => emit(
        DeleteAddressFailure(
          failure.errMessage,
        ),
      ),
      (response) => emit(
        DeleteAddressSuccess(
          response.data['message'],
        ),
      ),
    );
  }
}
