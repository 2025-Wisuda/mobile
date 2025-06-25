import 'package:get/get.dart';

import 'package:mobile/core/bindings/binding.dart';
import 'package:mobile/features/splash/presentation/controllers/controller.dart';

Bindings splashBinding() {
  return BindingsBuilder(() {
    final mainWrapperBinding = MainWrapperBinding();
    mainWrapperBinding.dependencies();

    Get.lazyPut(() => SplashController());
  });
}
