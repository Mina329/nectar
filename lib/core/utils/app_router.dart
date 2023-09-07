import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/service_locator.dart';
import 'package:nectar/features/account/presentation/view/setting_view.dart';
import 'package:nectar/features/delivery_address/data/repos/delivery_address_repo_impl.dart';
import 'package:nectar/features/delivery_address/presentation/view/address_confirm_view.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/location_bloc/location_bloc.dart';
import 'package:nectar/features/explore/presentation/view/category_details_view.dart';
import 'package:nectar/features/home/presentation/view/home_view.dart';
import 'package:nectar/features/splash/presentaion/view/splash_view.dart';
import '../../features/delivery_address/presentation/view/delivery_address_view.dart';
import '../../features/delivery_address/presentation/view/google_map_view.dart';
import '../../features/delivery_address/presentation/view/search_address_view.dart';
import '../../features/my_details/presentation/view/my_details_view.dart';
import '../../features/orders/presentation/view/orders_view.dart';
import '../../features/onboarding/presentation/view/onboarding_view.dart';
import '../../features/shop/presentation/view/item_details_view.dart';

abstract class AppRouter {
  static const kSplashView = "/";
  static const kOnBoardingView = "/onBoardingView";
  static const kHomeView = "/homeView";
  static const kItemDetailsView = "/itemDetailsView";
  static const kCategoryDetailsView = "/categoryItemsView";
  static const kOrdersView = "/ordersView";
  static const kSettingView = "/settingView";
  static const kMyDetailsView = "/myDetailsView";
  static const kDeliveryAddressView = "/deliveryAddressView";
  static const kGoogleMapView = "/googleMapView";
  static const kAddressConfirmView = "/addressConfirmView";
  static const kSearchAddressView = "/searchAddressView";

  static final router = GoRouter(routes: [
    GoRoute(
      path: kSplashView,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kOnBoardingView,
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kItemDetailsView,
      builder: (context, state) => const ItemDetailsView(),
    ),
    GoRoute(
      path: kCategoryDetailsView,
      builder: (context, state) => const CategoryDetailsView(),
    ),
    GoRoute(
      path: kOrdersView,
      builder: (context, state) => const OrdersView(),
    ),
    GoRoute(
      path: kSettingView,
      builder: (context, state) => const SettingView(),
    ),
    GoRoute(
      path: kMyDetailsView,
      builder: (context, state) => const MyDetailsView(),
    ),
    GoRoute(
      path: kDeliveryAddressView,
      builder: (context, state) => MultiBlocProvider(providers: [
        BlocProvider(
          create: (context) =>
              LocationBloc(getIt.get<DeliveryAddressRepoImpl>()),
        )
      ], child: const DeliveryAddressView()),
    ),
    GoRoute(
      path: kGoogleMapView,
      builder: (context, state) {
        LocationBloc bloc = state.extra as LocationBloc;
        return BlocProvider.value(value: bloc, child: const GoogleMapView());
      },
    ),
    GoRoute(
      path: kAddressConfirmView,
      builder: (context, state) {
        LocationBloc bloc = state.extra as LocationBloc;
        return BlocProvider.value(
            value: bloc, child: const AddressConfirmView());
      },
    ),
    GoRoute(
      path: kSearchAddressView,
      builder: (context, state) {
        LocationBloc bloc = state.extra as LocationBloc;
        return BlocProvider.value(
            value: bloc, child: const SearchAddressView());
      },
    ),
  ]);
}
