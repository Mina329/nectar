import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../account/data/models/account_model/address.dart';
import '../../../../delivery_address/data/models/address_model/address_model.dart';
import '../../../../delivery_address/data/repos/delivery_address_repo.dart';
import '../../../data/models/order_details_model/order_details_model.dart';
import '../../../data/repos/order_repo.dart';

part 'order_details_state.dart';

class OrderDetailsCubit extends Cubit<OrderDetailsState> {
  OrderDetailsCubit(this._orderRepo, this._deliveryAddressRepo)
      : super(OrderDetailsInitial());
  final OrderRepo _orderRepo;
  final DeliveryAddressRepo _deliveryAddressRepo;

  Future<void> getOrderDetails(String id) async {
    emit(OrderDetailsLoading());
    var result = await _orderRepo.fetchOrderDetails(id: id);
    result.fold(
      (failure) => emit(
        OrderDetailsFailure(
          failure.errMessage,
        ),
      ),
      (orderDetailsModel) async {
        AddressModel? addressModel = await getAddress(
          Address(
            id: orderDetailsModel.address!.id,
            lat: orderDetailsModel.address!.lat,
            lng: orderDetailsModel.address!.lng,
            isDefault: orderDetailsModel.address!.isDefault,
            apartmentNumber: orderDetailsModel.address!.apartmentNumber,
            buildingNumber: orderDetailsModel.address!.buildingNumber,
            floorNumber: orderDetailsModel.address!.floorNumber,
          ),
        );
        return emit(
          OrderDetailsSuccess(
            orderDetailsModel,
            addressModel,
          ),
        );
      },
    );
  }

  Future<AddressModel?> getAddress(Address address) async {
    var result = await _deliveryAddressRepo.fetchLocationPlacemark(
        address.lat.toString(), address.lng.toString(), "en");
    return result.fold((failure) {
      return null;
    }, (placemark) {
      return AddressModel(
        id: address.id,
        isDefault: address.isDefault,
        appartmentNumber: address.apartmentNumber,
        buildingNumber: address.buildingNumber,
        floor: address.floorNumber,
        district: placemark.results?[0].components?.neighbourhood,
        gorvernorate: placemark.results?[0].components?.city,
        street: placemark.results?[0].components?.road,
      );
    });
  }
}
