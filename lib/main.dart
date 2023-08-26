import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/theme_manager.dart';

import 'features/home/presentation/view_model/navigation_bar_cubit/navigation_bar_cubit.dart';

bool light = false;

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavigationBarCubit(),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: light ? ThemeManager.lightTheme : ThemeManager.darkTheme,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
