import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/cache/cache_helper.dart';
import 'package:nectar/core/cache/cache_keys_values.dart';
import 'package:nectar/core/utils/assets_manager.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/features/account/presentation/view/widgets/custom_account_list_items_app_bar.dart';
import 'package:nectar/features/account/presentation/view/widgets/setting_item.dart';
import 'package:nectar/main.dart';
import '../../../../../core/utils/app_router.dart';

class SettingViewBody extends StatefulWidget {
  const SettingViewBody({super.key});

  @override
  State<SettingViewBody> createState() => _SettingViewBodyState();
}

class _SettingViewBodyState extends State<SettingViewBody> {
  late String themeValue;
  @override
  void initState() {
    super.initState();
    themeValue = CacheData.getData(key: CacheKeys.kDARKMODE) == CacheValues.DARK
        ? StringsManager.dark.tr()
        : StringsManager.light.tr();
  }

  void _showDynamicDialog(
      {required BuildContext context,
      required String dialogTitle,
      required List<String> options,
      required String groupValue,
      required Function(String) onChanged}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    Theme.of(context).brightness == Brightness.light
                        ? AssetsManager.carrotImgLIGHT
                        : AssetsManager.carrotImgDARK,
                    width: 24.w,
                    height: 24.h,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    dialogTitle,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: options.map((option) {
                  return RadioListTile(
                    title: Text(
                      option,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    value: option,
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        onChanged(value!);
                        Navigator.of(context).pop();
                      });
                    },
                  );
                }).toList(),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAccountListItemsAppBar(
            title: StringsManager.settings.tr(),
          ),
          const Divider(),
          SettingItem(
            title: StringsManager.language.tr(),
            value: CacheData.getData(key: CacheKeys.kLANGUAGE) ==
                    CacheValues.ARABIC
                ? StringsManager.arabic.tr()
                : StringsManager.english.tr(),
            onTap: () {
              _showDynamicDialog(
                context: context,
                dialogTitle: StringsManager.language.tr(),
                options: [
                  StringsManager.english.tr(),
                  StringsManager.arabic.tr()
                ],
                groupValue: CacheData.getData(key: CacheKeys.kLANGUAGE) ==
                        CacheValues.ARABIC
                    ? StringsManager.arabic.tr()
                    : StringsManager.english.tr(),
                onChanged: (p0) {
                  if (p0 == StringsManager.arabic.tr()) {
                    CacheData.setData(
                        key: CacheKeys.kLANGUAGE, value: CacheValues.ARABIC);
                    Phoenix.rebirth(context);
                    GoRouter.of(context).go(AppRouter.kSplashView);
                  } else if (p0 == StringsManager.english.tr()) {
                    CacheData.setData(
                        key: CacheKeys.kLANGUAGE, value: CacheValues.ENGLISH);
                    Phoenix.rebirth(context);
                    GoRouter.of(context).go(AppRouter.kSplashView);
                  }
                },
              );
            },
          ),
          SettingItem(
            title: StringsManager.theme.tr(),
            value: Theme.of(context).brightness == Brightness.dark
                ? StringsManager.dark.tr()
                : StringsManager.light.tr(),
            onTap: () {
              _showDynamicDialog(
                context: context,
                dialogTitle: StringsManager.theme.tr(),
                options: [StringsManager.light.tr(), StringsManager.dark.tr()],
                groupValue: themeValue,
                onChanged: (p0) {
                  if (p0 == StringsManager.light.tr()) {
                    CacheData.setData(
                        key: CacheKeys.kDARKMODE, value: CacheValues.LIGHT);
                    notifier.value = ThemeMode.light;
                  } else if (p0 == StringsManager.dark.tr()) {
                    CacheData.setData(
                        key: CacheKeys.kDARKMODE, value: CacheValues.DARK);
                    notifier.value = ThemeMode.dark;
                  }
                  setState(() {
                    themeValue = CacheData.getData(key: CacheKeys.kDARKMODE) ==
                            CacheValues.DARK
                        ? StringsManager.dark.tr()
                        : StringsManager.light.tr();
                  });
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
