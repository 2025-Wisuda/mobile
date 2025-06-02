import 'package:auto_route/auto_route.dart';

import 'package:mobile/features/about_us/presentation/screens/screen.dart';
import 'package:mobile/features/auth/presentation/screens/screen.dart';
import 'package:mobile/features/menu/presentation/screens/screen.dart';
import 'package:mobile/features/splash/presentation/screens/screen.dart';
import 'package:mobile/features/user/presentation/screens/screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, path: '/', initial: true),
    AutoRoute(page: LoginRoute.page, path: '/login'),
    AutoRoute(page: MainWrapperRoute.page, path: '/main'),
    AutoRoute(page: AboutUsRoute.page, path: '/about-us'),
    AutoRoute(page: ChangePasswordRoute.page, path: '/change-password'),
    AutoRoute(page: UpdateProfileRoute.page, path: '/update-profile'),
  ];
}
