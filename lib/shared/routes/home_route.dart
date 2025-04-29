import 'package:get/get.dart';
import 'package:mobile/features/general/home/presentation/screens/home_screen.dart';
import 'app_route.dart';

final homeRoutes = [
  GetPage(
    name: AppRoute.home,
    page: () => const HomeScreen(),
  ),
];