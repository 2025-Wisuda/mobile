import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:mobile/features/splash/presentation/controllers/splash_controller.dart';

Bindings splashBinding() {
  return BindingsBuilder(() {
    Get.lazyPut(() => SplashController());
  });
}
