import 'package:go_router/go_router.dart';
import 'package:nectar/features/home/presentation/view/home_view.dart';
import 'package:nectar/features/splash/presentaion/view/splash_view.dart';

abstract class AppRouter {
  static const kSplashScreen = "/";
  static const kHomeScreen = "/homeScreen";

static final router = GoRouter(routes: [
  GoRoute(
    path: kSplashScreen,
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: kHomeScreen,
    builder: (context, state) => const HomeView(),
  ),
]);
}
