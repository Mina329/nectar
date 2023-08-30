import 'package:go_router/go_router.dart';
import 'package:nectar/features/home/presentation/view/home_view.dart';
import 'package:nectar/features/splash/presentaion/view/splash_view.dart';

import '../../features/onboarding/presentation/view/onboarding_view.dart';
import '../../features/shop/presentation/view/item_details_view.dart';

abstract class AppRouter {
  static const kSplashView = "/";
  static const kOnBoardingView = "/onBoardingView";
  static const kHomeView = "/homeView";
  static const kItemDetailsView = "/itemDetailsView";

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
  ]);
}
