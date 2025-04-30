import 'package:get/get.dart';
import 'package:mobile/features/auth/presentation/screens/login_screen.dart';
import 'package:mobile/shared/bindings/auth_binding.dart';
import 'app_route.dart';

final authRoutes = [
  GetPage(
    name: AppRoute.login,
    page: () => const LoginScreen(),
    binding: authBinding(),
  ),
];
