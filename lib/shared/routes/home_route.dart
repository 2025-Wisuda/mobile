// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/general/menu/presentation/widgets/widget.dart';
import 'package:mobile/shared/bindings/binding.dart';
import 'app_route.dart';

final homeRoutes = [
  GetPage(
    name: AppRoute.home,
    page: () => MenuBottomNavBarWidget(),
    binding: HomeBinding(),
  ),
];
