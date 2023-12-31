import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:nectar/core/cache/cache_keys_values.dart';
import 'package:nectar/core/l10n/locales.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/assets_manager.dart';
import 'package:nectar/core/utils/theme_manager.dart';
import 'package:path_provider/path_provider.dart';
import 'core/cache/cache_helper.dart';
import 'core/utils/service_locator.dart';

bool enableDevicePreview = false;
final ValueNotifier<ThemeMode> notifier = ValueNotifier(
    CacheData.getData(key: CacheKeys.kDARKMODE) == CacheValues.DARK
        ? ThemeMode.dark
        : ThemeMode.light);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheData.casheIntialization();
  await dotenv.load();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory());
  await setupServiceLocator();
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
            return MaterialApp.router(
              locale: context.locale,
              builder: DevicePreview.appBuilder,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              debugShowCheckedModeBanner: false,
              theme: ThemeManager.lightThemeData,
              darkTheme: ThemeManager.darkThemeData,
              themeMode: value,
              routerConfig: AppRouter.router,
            );
          }),
    );
  }
}
