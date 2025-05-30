// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/general/menu/presentation/widgets/widget.dart';
import 'app_route.dart';

final profileRoutes = [
  GetPage(name: AppRoute.profile, page: () => MenuBottomNavBarWidget()),
];
