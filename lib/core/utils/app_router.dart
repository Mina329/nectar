import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/service_locator.dart';
import 'package:nectar/features/account/presentation/view/setting%20view/setting_view.dart';
import 'package:nectar/features/auth/data/repos/auth_repo.dart';
import 'package:nectar/features/auth/presentation/view%20model/google_auth_cubit/google_auth_cubit.dart';
import 'package:nectar/features/delivery_address/presentation/view/address%20confirm%20view/address_confirm_view.dart';
import 'package:nectar/features/delivery_address/presentation/view/google%20map%20view/widgets/google_map_app_bar.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/delivery_address_cubit/delivery_address_cubit.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/location_bloc/location_bloc.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/search_address_cubit/search_address_cubit.dart';
import 'package:nectar/features/explore/data/repos/explore_repo.dart';
import 'package:nectar/features/explore/presentation/view%20model/category_items_cubit/category_items_cubit.dart';
import 'package:nectar/features/explore/presentation/view/category%20details%20view/category_details_view.dart';
import 'package:nectar/features/home/presentation/view/home_view.dart';
import 'package:nectar/features/my_details/data/repos/my_details_repo.dart';
import 'package:nectar/features/my_details/presentation/view%20model/my_details_cubit/my_details_cubit.dart';
import 'package:nectar/features/shop/presentation/view%20model/groceries_section_details_cubit/groceries_section_details_cubit.dart';
import 'package:nectar/features/shop/presentation/view%20model/item_details_cubit/item_details_cubit.dart';
import 'package:nectar/features/shop/presentation/view/groceries%20section%20view/groceries_section_view.dart';
import 'package:nectar/features/splash/presentaion/view/splash_view.dart';
import '../../features/account/data/models/account_item_list_navigation_model/account_item_list_navigation_model.dart';
import '../../features/account/presentation/view/about view/about_view.dart';
import '../../features/auth/presentation/view/login view/login_view.dart';
import '../../features/auth/presentation/view/phone auth view/phone_auth_view.dart';
import '../../features/auth/presentation/view/phone verify view/phone_verify_view.dart';
import '../../features/delivery_address/data/models/address_delivery_navigation_model/address_delivery_navigation_model.dart';
import '../../features/delivery_address/data/repos/delivery_address_repo.dart';
import '../../features/delivery_address/presentation/view/delivery address view/delivery_address_view.dart';
import '../../features/delivery_address/presentation/view/google map view/google_map_view.dart';
import '../../features/delivery_address/presentation/view/search address view/search_address_view.dart';
import '../../features/delivery_address/presentation/view_model/address_cubit/address_cubit.dart';
import '../../features/explore/data/models/category_model/category_model.dart';
import '../../features/favourite/data/models/favourite_to_details_model.dart';
import '../../features/my_details/presentation/view/my_details_view.dart';
import '../../features/orders/presentation/view/orders_view.dart';
import '../../features/onboarding/presentation/view/onboarding_view.dart';
import '../../features/payment_method/presentation/view/payment_method_view.dart';
import '../../features/shop/data/repos/shop_repo.dart';
import '../../features/shop/presentation/view model/best_selling_details_cubit/best_selling_details_cubit.dart';
import '../../features/shop/presentation/view model/exclusive_offer_details_cubit/exclusive_offer_details_cubit.dart';
import '../../features/shop/presentation/view model/favourite_cubit/favourite_cubit.dart';
import '../../features/shop/presentation/view/best selling view/best_selling_view.dart';
import '../../features/shop/presentation/view/exclusive offer view/exclusive_offer_view.dart';
import '../../features/shop/presentation/view/item details view/item_details_view.dart';
import '../cache/cache_helper.dart';
import '../cache/cache_keys_values.dart';

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
  static const kAboutView = "/aboutView";
  static const kLoginView = "/loginView";
  static const kPhoneAuthView = "/phoneAuthView";
  static const kPhoneVerifyView = "/phoneVerifyView";
  static const kExclusiveOfferView = "/exclusiveOfferView";
  static const kBestSellingView = "/bestSellingView";
  static const kGroceriesSectionView = "/groceriesSectionView";

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
        pageBuilder: (context, state) {
          FavouriteToDetailsModel model =
              state.extra as FavouriteToDetailsModel;
          return screenTransition(
            state,
            MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => ItemDetailsCubit(
                    getIt.get<ShopRepo>(),
                  )..getItemById(
                      model.id,
                      CacheData.getData(key: CacheKeys.kLANGUAGE) ==
                              CacheValues.ARABIC
                          ? "ar"
                          : "en"),
                ),
                BlocProvider(
                  create: (context) => FavouriteCubit(
                    getIt.get<ShopRepo>(),
                  ),
                ),
                if (model.favouriteItemsCubit != null)
                  BlocProvider.value(
                    value: model.favouriteItemsCubit!,
                  ),
              ],
              child: ItemDetailsView(
                  fromFavourite: model.favouriteItemsCubit != null),
            ),
          );
        },
      ),
      GoRoute(
        path: kCategoryDetailsView,
        pageBuilder: (context, state) {
          CategoryModel category = state.extra as CategoryModel;
          return screenTransition(
            state,
            BlocProvider(
              create: (context) => CategoryItemsCubit(
                getIt.get<ExploreRepo>(),
              )..fetchCategoryItems(category.id!),
              child: CategoryDetailsView(
                category: category,
              ),
            ),
          );
        },
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
          pageBuilder: (context, state) {
            AccountItemListNavigationModel model =
                state.extra as AccountItemListNavigationModel;
            return screenTransition(
              state,
              MultiBlocProvider(
                providers: [
                  BlocProvider.value(
                    value: model.bloc,
                  ),
                  BlocProvider(
                    create: (context) =>
                        MyDetailsCubit(getIt.get<MyDetailsRepo>()),
                  )
                ],
                child: MyDetailsView(
                  accountModel: model.account,
                ),
              ),
            );
          }),
      GoRoute(
          path: kDeliveryAddressView,
          pageBuilder: (context, state) {
            AccountItemListNavigationModel model =
                state.extra as AccountItemListNavigationModel;
            return screenTransition(
              state,
              MultiBlocProvider(
                providers: [
                  BlocProvider.value(
                    value: model.bloc,
                  ),
                  BlocProvider(
                    create: (context) => LocationBloc(
                      getIt.get<DeliveryAddressRepo>(),
                    ),
                  ),
                  BlocProvider(
                    create: (context) => DeliveryAddressCubit(
                      getIt.get<DeliveryAddressRepo>(),
                    )..getAddresses(model.account.addresses!),
                  ),
                  BlocProvider(
                    create: (context) => AddressCubit(
                      getIt.get<DeliveryAddressRepo>(),
                    ),
                  )
                ],
                child: DeliveryAddressView(
                  accountModel: model.account,
                ),
              ),
            );
          }),
      GoRoute(
        path: kGoogleMapView,
        pageBuilder: (context, state) {
          AddressDeliveryNavigationModel model =
              state.extra as AddressDeliveryNavigationModel;
          return screenTransition(
            state,
            MultiBlocProvider(
              providers: [
                BlocProvider.value(
                  value: model.locationBloc,
                ),
                BlocProvider.value(
                  value: model.accountInfoCubit,
                ),
                BlocProvider.value(
                  value: model.addressCubit,
                ),
                BlocProvider.value(
                  value: model.deliveryAddressCubit,
                ),
              ],
              child: const GoogleMapView(),
            ),
          );
        },
      ),
      GoRoute(
        path: kAddressConfirmView,
        pageBuilder: (context, state) {
          AddressDeliveryNavigationModel model =
              state.extra as AddressDeliveryNavigationModel;
          return screenTransition(
            state,
            MultiBlocProvider(
              providers: [
                BlocProvider.value(
                  value: model.locationBloc,
                ),
                BlocProvider.value(
                  value: model.accountInfoCubit,
                ),
                BlocProvider.value(
                  value: model.addressCubit,
                ),
                BlocProvider.value(
                  value: model.deliveryAddressCubit,
                ),
              ],
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
                    getIt.get<DeliveryAddressRepo>(),
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
      GoRoute(
        path: kExclusiveOfferView,
        pageBuilder: (context, state) => screenTransition(
          state,
          BlocProvider(
            create: (context) => ExclusiveOfferDetailsCubit(
              getIt.get<ShopRepo>(),
            ),
            child: const ExclusiveOfferView(),
          ),
        ),
      ),
      GoRoute(
        path: kBestSellingView,
        pageBuilder: (context, state) => screenTransition(
          state,
          BlocProvider(
            create: (context) => BestSellingDetailsCubit(
              getIt.get<ShopRepo>(),
            ),
            child: const BestSellingView(),
          ),
        ),
      ),
      GoRoute(
        path: kGroceriesSectionView,
        pageBuilder: (context, state) => screenTransition(
          state,
          BlocProvider(
            create: (context) => GroceriesSectionDetailsCubit(
              getIt.get<ShopRepo>(),
            ),
            child: const GroceriesSectionView(),
          ),
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
