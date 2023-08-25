import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/theme_manager.dart';

bool light = true;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
 
  if (light) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  } else {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: light ? ThemeManager.lightTheme : ThemeManager.darkTheme,
      routerConfig: AppRouter.router,
    );
  }
}
