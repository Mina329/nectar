import 'package:get_it/get_it.dart';
import 'package:nectar/features/delivery_address/data/repos/delivery_address_repo_impl.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<DeliveryAddressRepoImpl>(
    DeliveryAddressRepoImpl(),
  );
}
