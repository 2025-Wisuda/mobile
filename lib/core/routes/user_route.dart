import 'package:get/get.dart';

import 'package:mobile/core/bindings/user_binding.dart';
import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/user/presentation/screens/screen.dart';

final userRoutes = [
  GetPage(
    name: AppRoute.profile,
    page: () => const ProfileScreen(),
    binding: ProfileBinding(),
  ),
  GetPage(
    name: AppRoute.updateProfile,
    page: () => const UpdateProfileScreen(),
    binding: UpdateUserProfileBinding(),
  ),
];
