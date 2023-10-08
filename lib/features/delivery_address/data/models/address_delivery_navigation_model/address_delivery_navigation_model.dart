import 'package:nectar/features/delivery_address/presentation/view_model/address_cubit/address_cubit.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/delivery_address_cubit/delivery_address_cubit.dart';

import '../../../../account/presentation/view model/account_info_cubit/account_info_cubit.dart';
import '../../../presentation/view_model/location_bloc/location_bloc.dart';

class AddressDeliveryNavigationModel {
  final LocationBloc locationBloc;
  final AddressCubit addressCubit;
  final AccountInfoCubit accountInfoCubit;
  final DeliveryAddressCubit deliveryAddressCubit;
  AddressDeliveryNavigationModel(
    this.locationBloc,
    this.addressCubit,
    this.accountInfoCubit,
    this.deliveryAddressCubit,
  );
}
