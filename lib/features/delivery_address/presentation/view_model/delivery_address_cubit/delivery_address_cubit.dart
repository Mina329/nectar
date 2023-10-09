import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar/features/delivery_address/data/repos/delivery_address_repo.dart';

import '../../../../../core/cache/cache_helper.dart';
import '../../../../../core/cache/cache_keys_values.dart';
import '../../../../account/data/models/account_model/address.dart';
import '../../../data/models/address_model/address_model.dart';

part 'delivery_address_state.dart';

class DeliveryAddressCubit extends Cubit<DeliveryAddressState> {
  final DeliveryAddressRepo _deliveryAddressRepo;
  DeliveryAddressCubit(
    this._deliveryAddressRepo,
  ) : super(DeliveryAddressInitial());
  late List<AddressModel> addressesData;
  Future<void> getAddresses(List<Address> addresses) async {
    addressesData = [];
    emit(DeliveryAddressLoading());
    for (var address in addresses) {
      var result = await _deliveryAddressRepo.fetchLocationPlacemark(
          address.lat.toString(),
          address.lng.toString(),
          CacheData.getData(key: CacheKeys.kLANGUAGE) == CacheValues.ARABIC
              ? "ar"
              : "en");
      result.fold((failure) => null, (placemark) {
        addressesData.insert(
          0,
          AddressModel(
            id: address.id,
            isDefault: address.isDefault,
            appartmentNumber: address.apartmentNumber,
            buildingNumber: address.buildingNumber,
            floor: address.floorNumber,
            district: placemark.results?[0].components?.neighbourhood,
            gorvernorate: placemark.results?[0].components?.city,
            street: placemark.results?[0].components?.road,
          ),
        );
      });
    }
    emit(
      DeliveryAddressSuccess(
        addressesData,
      ),
    );
  }

  Future<void> addAddedAddress(
      {required double? lat,
      required double? lng,
      required String? buildingNumber,
      required String? apartmentNumber,
      required String? floor,
      required String id}) async {
    emit(DeliveryAddressLoading());
    var result = await _deliveryAddressRepo.fetchLocationPlacemark(
        lat.toString(),
        lng.toString(),
        CacheData.getData(key: CacheKeys.kLANGUAGE) == CacheValues.ARABIC
            ? "ar"
            : "en");
    result.fold((failure) => null, (placemark) {
      addressesData.insert(
        0,
        AddressModel(
          isDefault: false,
          id: id,
          appartmentNumber: apartmentNumber,
          buildingNumber: buildingNumber,
          floor: floor,
          district: placemark.results?[0].components?.neighbourhood,
          gorvernorate: placemark.results?[0].components?.city,
          street: placemark.results?[0].components?.road,
        ),
      );
    });
    emit(
      DeliveryAddressSuccess(
        addressesData,
      ),
    );
  }
}
