import 'package:get/get.dart';
import 'package:mobile/shared/routes/app_route.dart';
import 'package:mobile/shared/databases/session_database.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _checkToken();
  }

  Future<void> _checkToken() async {
    final accessToken = await SessionDatabase.getAccessToken();
    await Future.delayed(const Duration(seconds: 2), () {
      if (accessToken != null) {
        Get.offAllNamed(AppRoute.home);
      } else {
        Get.offAllNamed(AppRoute.login);
      }
    });
  }
}
