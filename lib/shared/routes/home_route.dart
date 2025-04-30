import 'package:get/get.dart';
import 'package:mobile/features/general/menu/presentation/widgets/menu_bottom_nav_bar_widget.dart';
import 'package:mobile/shared/bindings/binding.dart';
import 'app_route.dart';

final homeRoutes = [
  GetPage(
    name: AppRoute.home,
    page: () => MenuBottomNavBarWidget(),
    binding: HomeBinding(),
  ),
];
