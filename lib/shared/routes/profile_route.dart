import 'package:get/get.dart';
import 'package:mobile/features/general/menu/presentation/widgets/menu_bottom_nav_bar_widget.dart';
import 'app_route.dart';

final profileRoutes = [
  GetPage(name: AppRoute.profile, page: () => MenuBottomNavBarWidget()),
];
