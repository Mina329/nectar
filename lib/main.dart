import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/theme_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.lightTheme,
      routerConfig: AppRouter.router,
    );
  }
}
