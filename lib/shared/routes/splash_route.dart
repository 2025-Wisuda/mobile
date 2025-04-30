import 'package:get/get.dart';
import 'package:mobile/features/splash/presentation/screens/splash_screen.dart';
import 'package:mobile/shared/bindings/splash_binding.dart';
import 'app_route.dart';

final splashRoutes = [
  GetPage(
    name: AppRoute.root,
    page: () => const SplashScreen(),
    binding: splashBinding(),
  ),
];
