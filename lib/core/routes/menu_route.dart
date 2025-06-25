import 'package:get/get.dart';

import 'package:mobile/core/bindings/binding.dart';
import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/menu/presentation/screens/screen.dart';

final menuRoutes = [
  GetPage(
    name: AppRoute.home,
    page: () => const MainWrapperScreen(),
    binding: splashBinding(),
  ),
];
