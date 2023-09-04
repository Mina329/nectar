import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/cache/cache_keys_values.dart';
import 'package:nectar/core/l10n/locales.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/assets_manager.dart';
import 'package:nectar/core/utils/theme_manager.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/location_cubit/location_cubit.dart';
import 'core/cache/cache_helper.dart';

bool enableDevicePreview = false;
final ValueNotifier<ThemeMode> notifier = ValueNotifier(
    CacheData.getData(key: CacheKeys.kDARKMODE) == CacheValues.DARK
        ? ThemeMode.dark
        : ThemeMode.light);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheData.casheIntialization();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await EasyLocalization.ensureInitialized();
  if (CacheData.getData(key: CacheKeys.kDARKMODE) == null) {
    CacheData.setData(key: CacheKeys.kDARKMODE, value: CacheValues.LIGHT);
  }
  if (CacheData.getData(key: CacheKeys.kLANGUAGE) == null) {
    CacheData.setData(key: CacheKeys.kLANGUAGE, value: CacheValues.ENGLISH);
  }
  runApp(
    DevicePreview(
      enabled: enableDevicePreview,
      builder: (context) => EasyLocalization(
        supportedLocales: const [ENGLISH_LOCALE, ARABIC_LOCALE],
        path: AssetsManager.localization,
        child: Phoenix(
          child: const MyApp(),
        ),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void didChangeDependencies() {
    CacheData.getLocale().then(
      (locale) => context.setLocale(locale),
    );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (context, child) => ValueListenableBuilder<ThemeMode>(
          valueListenable: notifier,
          builder: (context, value, child) {
            return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => LocationCubit(),
                )
              ],
              child: MaterialApp.router(
                locale: context.locale,
                builder: DevicePreview.appBuilder,
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                debugShowCheckedModeBanner: false,
                theme: ThemeManager.lightTheme,
                darkTheme: ThemeManager.darkTheme,
                themeMode: value,
                routerConfig: AppRouter.router,
              ),
            );
          }),
    );
  }
}
