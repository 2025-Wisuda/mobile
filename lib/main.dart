import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:get/get.dart';

import 'shared/routes/route.dart';
import 'shared/themes/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();
  
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('id', 'ID')],
      path: 'assets/translations',
      fallbackLocale: const Locale('id', 'ID'),
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
            initialRoute: AppRoute.root,
            getPages: AppScreen.routes,
          );
        },
      ),
    ),
  );
}



// import 'package:flutter/material.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:get/get.dart';

// import 'shared/routes/route.dart';
// import 'shared/themes/theme.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   await EasyLocalization.ensureInitialized();
  
//   runApp(
//     EasyLocalization(
//       supportedLocales: const [Locale('en', 'US'), Locale('id', 'ID')],
//       path: 'assets/translations',
//       fallbackLocale: const Locale('en', 'US'),
//       child: MobileApp(),
//       ),
    
//   );
// }

// class MobileApp extends StatelessWidget {
//   const MobileApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  GetMaterialApp(
//             localizationsDelegates: context.localizationDelegates,
//             supportedLocales: context.supportedLocales,
//             locale: context.locale,
//             debugShowCheckedModeBanner: false,
//             theme: AppTheme.kLightTheme,
//             darkTheme: AppTheme.kDarkTheme,
//             themeMode: ThemeMode.system,
//             initialRoute: AppRoute.root,
//             getPages: AppScreen.routes,
//           );
//   }
// }