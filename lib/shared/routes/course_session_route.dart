// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/general/home/presentation/screens/home_screen.dart';
import 'package:mobile/shared/bindings/bindings.dart';
import 'app_route.dart';

final courseSessionRoutes = [
  GetPage(
    name: AppRoute.courseSession,
    page: () => HomeScreen(),
    binding: courseBinding(),
  ),
];
