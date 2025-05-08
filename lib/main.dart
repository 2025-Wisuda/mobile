import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:get/get.dart';
import 'package:mobile/core/injections/injection.dart';
import 'shared/routes/route.dart';
import 'shared/themes/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  Injection.init();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('id', 'ID')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en', 'US'),
      child: Builder(
        builder: (context) {
          return GetMaterialApp(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            debugShowCheckedModeBanner: false,
            theme: AppTheme.kLightTheme,
            darkTheme: AppTheme.kDarkTheme,
            themeMode: ThemeMode.system,
            initialRoute: AppRoute.splash,
            getPages: AppScreen.routes,
          );
        },
      ),
    ),
  );
}
