import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mobile/features/general/menu/menu.dart';
import 'package:mobile/features/user/user.dart';
import 'package:mobile/features/auth/auth.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainMenuLocalDatasource>(() => MainMenuLocalDatasource());
    Get.lazyPut<MainNavMenuLocalDatasource>(() => MainNavMenuLocalDatasource());
    Get.lazyPut<ProfileMenuLocalDatasource>(() => ProfileMenuLocalDatasource());
    Get.lazyPut<MenuRepository>(
      () => MenuRepositoryImpl(
        mainMenuLocalDatasource: Get.find<MainMenuLocalDatasource>(),
        profileMenuLocalDatasource: Get.find<ProfileMenuLocalDatasource>(),
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
    Get.lazyPut<FetchProfileMenuUsecase>(
      () => FetchProfileMenuUsecase(Get.find<MenuRepository>()),
    );
    Get.lazyPut<MenuController>(
      () => MenuController(
        fetchMainMenuUsecase: Get.find<FetchMainMenuUsecase>(),
        fetchMainNavMenuUsecase: Get.find<FetchMainNavMenuUsecase>(),
        fetchProfileMenuUsecase: Get.find<FetchProfileMenuUsecase>(),
      ),
    );

    Get.lazyPut<UserRemoteDataSource>(
      () => UserRemoteDataSourceImpl(Get.find<Dio>()),
    );
    Get.lazyPut<UserRepository>(
      () => UserRepositoryImpl(Get.find<UserRemoteDataSource>()),
    );
    Get.lazyPut<FetchListUserUsecase>(
      () => FetchListUserUsecase(Get.find<UserRepository>()),
    );
    Get.lazyPut<FetchUserDetailUsecase>(
      () => FetchUserDetailUsecase(Get.find<UserRepository>()),
    );
    Get.lazyPut<FetchUserProfileUsecase>(
      () => FetchUserProfileUsecase(Get.find<UserRepository>()),
    );
    Get.lazyPut<UpdateUserProfileUsecase>(
      () => UpdateUserProfileUsecase(Get.find<UserRepository>()),
    );
    Get.lazyPut<ChangePasswordUsecase>(
      () => ChangePasswordUsecase(Get.find<UserRepository>()),
    );
    Get.lazyPut<UserController>(
      () => UserController(
        fetchListUserUsecase: Get.find<FetchListUserUsecase>(),
        fetchUserDetailUsecase: Get.find<FetchUserDetailUsecase>(),
        fetchUserProfileUsecase: Get.find<FetchUserProfileUsecase>(),
        updateUserProfileUsecase: Get.find<UpdateUserProfileUsecase>(),
        changePasswordUsecase: Get.find<ChangePasswordUsecase>(),
      ),
    );

    Get.lazyPut<AuthController>(() => AuthController(Get.find<LoginUseCase>()));
    Get.lazyPut<LoginUseCase>(() => LoginUseCase(Get.find<AuthRepository>()));
    Get.lazyPut<AuthRepository>(
      () => AuthRepositoryImpl(Get.find<AuthRemoteDataSource>()),
    );
    Get.lazyPut<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(Get.find<Dio>()),
    );
  }
}
