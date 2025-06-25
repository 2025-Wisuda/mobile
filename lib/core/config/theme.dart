import 'package:flutter/material.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class ThemeConfig {
  static const String _themeKey = 'app_theme_mode';
  static const _storage = FlutterSecureStorage();

  static Future<ThemeMode> loadThemeMode() async {
    try {
      final savedThemeMode = await _storage.read(key: _themeKey);
      if (savedThemeMode != null) {
        return savedThemeMode == 'dark' ? ThemeMode.dark : ThemeMode.light;
      }
      return Get.isPlatformDarkMode ? ThemeMode.dark : ThemeMode.light;
    } catch (error) {
      return Get.isPlatformDarkMode ? ThemeMode.dark : ThemeMode.light;
    }
  }

  static Future<void> saveThemeMode(ThemeMode themeMode) async {
    try {
      final value = themeMode == ThemeMode.dark ? 'dark' : 'light';
      await _storage.write(key: _themeKey, value: value);
    } catch (error) {
      debugPrint('Failed to save theme mode: $error');
    }
  }

  static Future<void> toggleThemeMode() async {
    final currentMode = Get.isDarkMode ? ThemeMode.light : ThemeMode.dark;
    await setThemeMode(currentMode);
  }

  static Future<void> setThemeMode(ThemeMode themeMode) async {
    await saveThemeMode(themeMode);
    Get.changeThemeMode(themeMode);
  }

  static Future<void> setSystemTheme() async {
    final systemTheme =
        Get.isPlatformDarkMode ? ThemeMode.dark : ThemeMode.light;
    await setThemeMode(systemTheme);
  }

  static Future<void> initialize() async {
    final savedThemeMode = await loadThemeMode();
    Get.changeThemeMode(savedThemeMode);
  }
}
