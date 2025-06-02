import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';

import 'package:mobile/core/routes/app_router.dart';
import 'package:mobile/core/themes/theme.dart';
import 'package:mobile/di/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  configureDependencies();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('id', 'ID')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en', 'US'),
      child: Builder(
        builder: (context) {
          final appRouter = getIt<AppRouter>();
          return MaterialApp.router(
            routerDelegate: appRouter.delegate(),
            routeInformationParser: appRouter.defaultRouteParser(),
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            debugShowCheckedModeBanner: false,
            theme: AppTheme.kLightTheme,
            darkTheme: AppTheme.kDarkTheme,
            themeMode: ThemeMode.system,
          );
        },
      ),
    ),
  );
}
