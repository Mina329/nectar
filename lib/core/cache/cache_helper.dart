import 'package:flutter/material.dart';
import 'package:nectar/core/cache/cache_keys_values.dart';
import 'package:nectar/core/l10n/locales.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheData {
  static late SharedPreferences _sharedPreferences;
  static Future<void> casheIntialization() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> setData(
      {required String key, required dynamic value}) async {
    if (value is int) {
      await _sharedPreferences.setInt(key, value);
      return true;
    }
    if (value is String) {
      await _sharedPreferences.setString(key, value);
      return true;
    }
    if (value is bool) {
      await _sharedPreferences.setBool(key, value);
      return true;
    }
    if (value is double) {
      await _sharedPreferences.setDouble(key, value);
      return true;
    }
    if (value is List<String>) {
      await _sharedPreferences.setStringList(key, value);
      return true;
    }
    return false;
  }

  static dynamic getData({required String key}) {
    return _sharedPreferences.get(key);
  }

  static Future<bool> removeData({required String key}) async {
    return await _sharedPreferences.remove(key);
  }

  static Future<Locale> getLocale() async {
    return await getData(key: CacheKeys.kLANGUAGE) == CacheValues.ENGLISH
        ? ENGLISH_LOCALE
        : ARABIC_LOCALE;
  }
}
