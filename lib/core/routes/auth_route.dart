import 'package:get/get.dart';

import 'package:mobile/core/bindings/binding.dart';
import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/auth/presentation/screens/screen.dart';

final authRoutes = [
  GetPage(
    name: AppRoute.login,
    page: () => const LoginScreen(),
    binding: LoginBinding(),
  ),
  GetPage(
    name: AppRoute.changePassword,
    page: () => const ChangePasswordScreen(),
    binding: ChangePasswordBinding(),
  ),
];
