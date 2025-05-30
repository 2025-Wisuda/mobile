// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/general/splash/presentation/screens/screen.dart';
import 'package:mobile/shared/bindings/binding.dart';
import 'app_route.dart';

final splashRoutes = [
  GetPage(
    name: AppRoute.splash,
    page: () => const SplashScreen(),
    binding: splashBinding(),
  ),
];
