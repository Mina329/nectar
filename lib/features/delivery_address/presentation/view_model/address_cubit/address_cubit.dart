import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
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

  Future<void> addAddress(
      {required String? buildingNumber,
      required String? floorNumber,
      required String? apartmentNumber,
      required double? lat,
      required double? lng}) async {
    emit(AddressLoading());
    var result = await _deliveryAddressRepo.postAddAddress(
      buildingNumber,
      floorNumber,
      apartmentNumber,
      lat,
      lng,
    );
    result.fold(
      (failure) => emit(
        AddAddressFailure(
          failure.errMessage,
        ),
      ),
      (response) => emit(
        AddAddressSuccess(
          response,
        ),
      ),
    );
  }

  Future<void> setDefaultAddress(String id) async {
    emit(DefaultAddressLoading());
    var result = await _deliveryAddressRepo.patchDefaultAddress(id);
    result.fold(
      (failure) => emit(
        DefaultAddressFailure(
          failure.errMessage,
        ),
      ),
      (response) => emit(
        DefaultAddressSuccess(
          response,
        ),
      ),
    );
  }
}
