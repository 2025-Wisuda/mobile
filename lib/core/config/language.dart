import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LanguageConfig {
  static const String _languageKey = 'app_language';
  static const _storage = FlutterSecureStorage();

  static const List<Locale> supportedLocales = [
    Locale('en', 'US'),
    Locale('id', 'ID'),
  ];

  static const Locale defaultLocale = Locale('id', 'ID');

  static Future<Locale> loadLanguage() async {
    try {
      final savedLanguage = await _storage.read(key: _languageKey);
      if (savedLanguage != null) {
        return _parseLocale(savedLanguage);
      }
      return _getSystemLocaleOrDefault();
    } catch (error) {
      return defaultLocale;
    }
  }

  static Future<void> saveLanguage(Locale locale) async {
    try {
      final value = '${locale.languageCode}_${locale.countryCode}';
      await _storage.write(key: _languageKey, value: value);
    } catch (error) {
      debugPrint('Failed to save language: $error');
    }
  }

  static Locale _parseLocale(String localeString) {
    final parts = localeString.split('_');
    if (parts.length == 2) {
      final locale = Locale(parts[0], parts[1]);
      if (supportedLocales.contains(locale)) {
        return locale;
      }
    }
    return defaultLocale;
  }

  static Locale _getSystemLocaleOrDefault() {
    final systemLocale = PlatformDispatcher.instance.locale;
    for (final locale in supportedLocales) {
      if (locale.languageCode == systemLocale.languageCode) {
        return locale;
      }
    }
    return defaultLocale;
  }
}
