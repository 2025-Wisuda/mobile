import 'package:get/get.dart';
import 'package:mobile/features/general/menu/menu.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainMenuLocalDatasource>(() => MainMenuLocalDatasource());
    Get.lazyPut<MainNavMenuLocalDatasource>(() => MainNavMenuLocalDatasource());
    Get.lazyPut<MenuRepository>(
      () => MenuRepositoryImpl(
        mainMenuLocalDatasource: Get.find<MainMenuLocalDatasource>(),
        Get.find<MainMenuLocalDatasource>(),
      ),
    );
    Get.lazyPut<NavRepository>(
      () => NavRepositoryImpl(
        mainNavMenuLocalDatasource: Get.find<MainNavMenuLocalDatasource>(),
        Get.find<MainNavMenuLocalDatasource>(),
      ),
    );
    Get.lazyPut<FetchMainMenuUsecase>(
      () => FetchMainMenuUsecase(Get.find<MenuRepository>()),
    );
    Get.lazyPut<FetchMainNavMenuUsecase>(
      () => FetchMainNavMenuUsecase(Get.find<NavRepository>()),
    );
    Get.lazyPut<MenuController>(
      () => MenuController(
        fetchMainMenuUsecase: Get.find<FetchMainMenuUsecase>(),
        fetchMainNavMenuUsecase: Get.find<FetchMainNavMenuUsecase>(),
      ),
    );
  }
}
