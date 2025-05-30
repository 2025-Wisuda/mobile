// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/shared/shared.dart';

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
