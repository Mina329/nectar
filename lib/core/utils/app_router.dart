import 'package:go_router/go_router.dart';
import 'package:nectar/features/account/presentation/view/setting_view.dart';
import 'package:nectar/features/explore/presentation/view/category_details_view.dart';
import 'package:nectar/features/home/presentation/view/home_view.dart';
import 'package:nectar/features/splash/presentaion/view/splash_view.dart';
import '../../features/account/presentation/view/my_details_view.dart';
import '../../features/account/presentation/view/orders_view.dart';
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
  ]);
}
