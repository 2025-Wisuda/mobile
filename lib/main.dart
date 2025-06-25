import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:get/get.dart';

import 'core/config/language.dart';
import 'core/routes/route.dart';
import 'core/themes/theme.dart';
import 'shared/utils/simple_logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  SimpleLogger.configure(
    enabled: true,
    showTimestamp: true,
    showLocation: false,
  );

  final savedLocale = await LanguageConfig.loadLanguage();

  runApp(
    EasyLocalization(
      supportedLocales: LanguageConfig.supportedLocales,
      path: 'assets/translations',
      fallbackLocale: LanguageConfig.defaultLocale,
      startLocale: savedLocale,
      child: Builder(
        builder: (context) {
          return GetMaterialApp(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            debugShowCheckedModeBanner: false,
            theme: AppTheme.kLightTheme,
            darkTheme: AppTheme.kDarkTheme,
            themeMode: ThemeMode.light,
            initialRoute: AppRoute.splash,
            getPages: AppScreen.routes,
          );
        },
      ),
    ),
  );
}
