// Package imports:
import 'package:dio/dio.dart';
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/auth/auth.dart';
import 'package:mobile/features/duty_schedule/duty_schedule.dart';
import 'package:mobile/features/general/home/presentation/controllers/home_controller.dart';
import 'package:mobile/features/general/menu/menu.dart';
import 'package:mobile/features/lab_schedule/lab_schedule.dart';
import 'package:mobile/features/user/user.dart';

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

    Get.lazyPut<LabScheduleRemoteDataSource>(
      () => LabScheduleRemoteDataSourceImpl(Get.find<Dio>()),
    );
    Get.lazyPut<LabScheduleRepository>(
      () => LabScheduleRepositoryImpl(Get.find<LabScheduleRemoteDataSource>()),
    );

    Get.lazyPut<FetchListLabScheduleUsecase>(
      () => FetchListLabScheduleUsecase(Get.find<LabScheduleRepository>()),
    );
    Get.lazyPut<FetchLabScheduleDetailUsecase>(
      () => FetchLabScheduleDetailUsecase(Get.find<LabScheduleRepository>()),
    );
    Get.lazyPut<ApproveLabScheduleUsecase>(
      () => ApproveLabScheduleUsecase(Get.find<LabScheduleRepository>()),
    );
    Get.lazyPut<LabScheduleController>(
      () => LabScheduleController(
        fetchListLabScheduleUsecase: Get.find<FetchListLabScheduleUsecase>(),
        fetchLabScheduleDetailUsecase:
            Get.find<FetchLabScheduleDetailUsecase>(),
        approveLabScheduleUsecase: Get.find<ApproveLabScheduleUsecase>(),
      ),
    );

    Get.lazyPut<DutyScheduleRemoteDataSource>(
      () => DutyScheduleRemoteDataSourceImpl(Get.find<Dio>()),
    );

    Get.lazyPut<DutyScheduleRepository>(
      () =>
          DutyScheduleRepositoryImpl(Get.find<DutyScheduleRemoteDataSource>()),
    );

    Get.lazyPut<FetchListDutyScheduleUsecase>(
      () => FetchListDutyScheduleUsecase(Get.find<DutyScheduleRepository>()),
    );
    Get.lazyPut<FetchDutyScheduleDetailUsecase>(
      () => FetchDutyScheduleDetailUsecase(Get.find<DutyScheduleRepository>()),
    );

    Get.lazyPut<DutyScheduleController>(
      () => DutyScheduleController(
        fetchListDutyScheduleUsecase: Get.find<FetchListDutyScheduleUsecase>(),
        fetchDutyScheduleDetailUsecase:
            Get.find<FetchDutyScheduleDetailUsecase>(),
      ),
    );

    Get.lazyPut(() => HomeController());
  }
}
