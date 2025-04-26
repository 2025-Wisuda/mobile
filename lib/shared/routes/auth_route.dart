import 'package:get/get.dart';
import 'package:mobile/features/auth/auth.dart';
import 'app_route.dart';

final authRoutes = [
  GetPage(
    name: AppRoute.login,
    page: () => const LoginScreen(),
    // binding: LoginBinding(),
  ),
];