import 'package:get/get.dart';
import 'package:mobile/shared/routes/app_route.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 2), () {
      Get.offAllNamed(AppRoute.login);
    });
  }
}