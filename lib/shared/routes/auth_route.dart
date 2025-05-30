// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/auth/presentation/screens/screen.dart';
import 'package:mobile/shared/bindings/binding.dart';
import 'app_route.dart';

final authRoutes = [
  GetPage(
    name: AppRoute.login,
    page: () => const LoginScreen(),
    binding: authBinding(),
  ),
];
