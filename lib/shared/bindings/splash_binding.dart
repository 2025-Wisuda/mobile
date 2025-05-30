// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/general/splash/presentation/controllers/splash_controller.dart';

Bindings splashBinding() {
  return BindingsBuilder(() {
    Get.lazyPut(() => SplashController());
  });
}
