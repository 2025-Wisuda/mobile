import 'package:get/get.dart';
import 'package:mobile/features/splash/splash.dart';
import 'package:mobile/shared/bindings/binding.dart';
import 'app_route.dart';

final splashRoutes = [
  GetPage(
    name: AppRoute.root,
    page: () => const SplashScreen(),
    binding: splashBinding(),
  ),
];