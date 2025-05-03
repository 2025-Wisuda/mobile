import 'package:get/get.dart';
import 'package:mobile/features/general/about_us/about_us.dart';
import 'package:mobile/shared/bindings/home_binding.dart';
import 'app_route.dart';

final aboutUsRoute = [
  GetPage(
    name: AppRoute.aboutUs,
    page: () => AboutUsScreen(),
    binding: HomeBinding(),
  ),
];
