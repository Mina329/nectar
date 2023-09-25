import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/service_locator.dart';
import 'package:nectar/features/account/presentation/view/setting_view.dart';
import 'package:nectar/features/auth/data/repos/auth_repo.dart';
import 'package:nectar/features/auth/presentation/view%20model/google_auth_cubit/google_auth_cubit.dart';
import 'package:nectar/features/delivery_address/data/repos/delivery_address_repo_impl.dart';
import 'package:nectar/features/delivery_address/presentation/view/address_confirm_view.dart';
import 'package:nectar/features/delivery_address/presentation/view/widgets/google_map_app_bar.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/location_bloc/location_bloc.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/search_address_cubit/search_address_cubit.dart';
import 'package:nectar/features/explore/presentation/view/category%20details%20view/category_details_view.dart';
import 'package:nectar/features/home/presentation/view/home_view.dart';
import 'package:nectar/features/splash/presentaion/view/splash_view.dart';
import '../../features/account/presentation/view/about_view.dart';
import '../../features/account/presentation/view/promo_code_view.dart';
import '../../features/auth/presentation/view/login view/login_view.dart';
import '../../features/auth/presentation/view/phone auth view/phone_auth_view.dart';
import '../../features/auth/presentation/view/phone verify view/phone_verify_view.dart';
import '../../features/delivery_address/presentation/view/delivery_address_view.dart';
import '../../features/delivery_address/presentation/view/google_map_view.dart';
import '../../features/delivery_address/presentation/view/search_address_view.dart';
import '../../features/my_details/presentation/view/my_details_view.dart';
import '../../features/orders/presentation/view/orders_view.dart';
import '../../features/onboarding/presentation/view/onboarding_view.dart';
import '../../features/payment_method/presentation/view/payment_method_view.dart';
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
  static const kPaymentMethodView = "/paymentMethodView";
  static const kPromoCodeView = "/promoCodeView";
  static const kAboutView = "/aboutView";
  static const kLoginView = "/loginView";
  static const kPhoneAuthView = "/phoneAuthView";
  static const kPhoneVerifyView = "/phoneVerifyView";

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kOnBoardingView,
        pageBuilder: (context, state) => screenTransition(
          state,
          const OnBoardingView(),
        ),
      ),
      GoRoute(
        path: kHomeView,
        pageBuilder: (context, state) => screenTransition(
          state,
          const HomeView(),
        ),
      ),
      GoRoute(
        path: kItemDetailsView,
        pageBuilder: (context, state) => screenTransition(
          state,
          const ItemDetailsView(),
        ),
      ),
      GoRoute(
        path: kCategoryDetailsView,
        pageBuilder: (context, state) => screenTransition(
          state,
          const CategoryDetailsView(),
        ),
      ),
      GoRoute(
        path: kOrdersView,
        pageBuilder: (context, state) => screenTransition(
          state,
          const OrdersView(),
        ),
      ),
      GoRoute(
        path: kSettingView,
        pageBuilder: (context, state) => screenTransition(
          state,
          const SettingView(),
        ),
      ),
      GoRoute(
        path: kMyDetailsView,
        pageBuilder: (context, state) => screenTransition(
          state,
          const MyDetailsView(),
        ),
      ),
      GoRoute(
        path: kDeliveryAddressView,
        pageBuilder: (context, state) => screenTransition(
          state,
          MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => LocationBloc(
                  getIt.get<DeliveryAddressRepoImpl>(),
                ),
              )
            ],
            child: const DeliveryAddressView(),
          ),
        ),
      ),
      GoRoute(
        path: kGoogleMapView,
        pageBuilder: (context, state) {
          LocationBloc bloc = state.extra as LocationBloc;
          return screenTransition(
            state,
            BlocProvider.value(
              value: bloc,
              child: const GoogleMapView(),
            ),
          );
        },
      ),
      GoRoute(
        path: kAddressConfirmView,
        pageBuilder: (context, state) {
          LocationBloc bloc = state.extra as LocationBloc;
          return screenTransition(
            state,
            BlocProvider.value(
              value: bloc,
              child: const AddressConfirmView(),
            ),
          );
        },
      ),
      GoRoute(
        path: kSearchAddressView,
        pageBuilder: (context, state) {
          PassingObjects passingObjects = state.extra as PassingObjects;
          return screenTransition(
            state,
            MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => SearchAddressCubit(
                    getIt.get<DeliveryAddressRepoImpl>(),
                    passingObjects.controller,
                  ),
                ),
                BlocProvider.value(value: passingObjects.bloc),
              ],
              child: const SearchAddressView(),
            ),
          );
        },
      ),
      GoRoute(
        path: kPaymentMethodView,
        pageBuilder: (context, state) => screenTransition(
          state,
          const PaymentMethodView(),
        ),
      ),
      GoRoute(
        path: kPromoCodeView,
        pageBuilder: (context, state) => screenTransition(
          state,
          const PromoCodeView(),
        ),
      ),
      GoRoute(
        path: kAboutView,
        pageBuilder: (context, state) => screenTransition(
          state,
          const AboutView(),
        ),
      ),
      GoRoute(
        path: kLoginView,
        pageBuilder: (BuildContext context, GoRouterState state) =>
            screenTransition(
          state,
          MultiBlocProvider(providers: [
            BlocProvider(
              create: (context) => GoogleAuthCubit(
                getIt.get<AuthRepo>(),
              ),
            )
          ], child: const LoginView()),
        ),
      ),
      GoRoute(
        path: kPhoneAuthView,
        pageBuilder: (context, state) => screenTransition(
          state,
          const PhoneAuthView(),
        ),
      ),
      GoRoute(
        path: kPhoneVerifyView,
        pageBuilder: (context, state) => screenTransition(
          state,
          const PhoneVerifyView(),
        ),
      ),
    ],
  );
}

CustomTransitionPage<void> screenTransition(
    GoRouterState state, Widget screen) {
  return CustomTransitionPage<void>(
    key: state.pageKey,
    child: screen,
    transitionDuration: const Duration(milliseconds: 300),
    transitionsBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) {
      return FadeTransition(
        opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
        child: child,
      );
    },
  );
}
