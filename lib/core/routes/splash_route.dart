import 'package:get/get.dart';

import 'package:mobile/core/bindings/binding.dart';
import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/splash/splash.dart';

final splashRoutes = [
  GetPage(
    name: AppRoute.splash,
    page: () => const SplashScreen(),
    binding: splashBinding(),
  ),
];
