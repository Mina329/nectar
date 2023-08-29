import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/theme_manager.dart';

import 'core/cache/cache_helper.dart';
import 'features/home/presentation/view_model/navigation_bar_cubit/navigation_bar_cubit.dart';

bool light = true;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheData.casheIntialization();
  if (CacheData.getData(key: "light") == null) {
    CacheData.setData(key: "light", value: true);
  }
  light = CacheData.getData(key: "light");
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
      child: ScreenUtilInit(
        designSize: const Size(414,896),
        builder: (context, child) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: light ? ThemeManager.lightTheme : ThemeManager.darkTheme,
          routerConfig: AppRouter.router,
        ),
      ),
    );
  }
}
