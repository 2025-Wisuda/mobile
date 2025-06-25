import 'package:get/get.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/about_us/presentation/screens/screen.dart';

final aboutUsRoute = [
  GetPage(
    name: AppRoute.aboutUs,
    page: () => const AboutUsScreen(),
  ),
];
