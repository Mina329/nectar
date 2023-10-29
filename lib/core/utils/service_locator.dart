import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nectar/core/utils/api_service.dart';
import 'package:nectar/features/account/data/repos/account_repo.dart';
import 'package:nectar/features/account/data/repos/account_repo_impl.dart';
import 'package:nectar/features/auth/data/repos/auth_repo.dart';
import 'package:nectar/features/auth/data/repos/auth_repo_impl.dart';
import 'package:nectar/features/cart/data/repos/cart_repo.dart';
import 'package:nectar/features/cart/data/repos/cart_repo_impl.dart';
import 'package:nectar/features/delivery_address/data/repos/delivery_address_repo_impl.dart';
import 'package:nectar/features/explore/data/repos/explore_repo.dart';
import 'package:nectar/features/explore/data/repos/explore_repo_impl.dart';
import 'package:nectar/features/my_details/data/repos/my_details_repo_impl.dart';
import 'package:nectar/features/orders/data/repos/order_repo.dart';
import 'package:nectar/features/orders/data/repos/order_repo_impl.dart';
import 'package:nectar/features/shop/data/repos/shop_repo.dart';
import 'package:nectar/features/shop/data/repos/shop_repo_impl.dart';

import '../../features/delivery_address/data/repos/delivery_address_repo.dart';
import '../../features/favourite/data/repos/favourite_repo.dart';
import '../../features/favourite/data/repos/favourite_repo_impl.dart';
import '../../features/my_details/data/repos/my_details_repo.dart';

final getIt = GetIt.instance;
Future<void> setupServiceLocator() async {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<DeliveryAddressRepo>(
    DeliveryAddressRepoImpl(getIt.get<ApiService>()),
  );
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(getIt.get<ApiService>()),
  );
  getIt.registerSingleton<ShopRepo>(
    ShopRepoImpl(getIt.get<ApiService>()),
  );
  getIt.registerSingleton<ExploreRepo>(
    ExploreRepoImpl(getIt.get<ApiService>()),
  );
  getIt.registerSingleton<FavouriteRepo>(
    FavouriteRepoImpl(getIt.get<ApiService>()),
  );
  getIt.registerSingleton<AccountRepo>(
    AccountRepoImpl(getIt.get<ApiService>()),
  );
  getIt.registerSingleton<MyDetailsRepo>(
    MyDetailsRepoImpl(getIt.get<ApiService>()),
  );
  getIt.registerSingleton<CartRepo>(
    CartRepoImpl(getIt.get<ApiService>()),
  );
  getIt.registerSingleton<OrderRepo>(
    OrderRepoImpl(getIt.get<ApiService>()),
  );
}
