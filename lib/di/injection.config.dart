// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:mobile/core/network/dio_service_network.dart' as _i313;
import 'package:mobile/core/network/network.dart' as _i289;
import 'package:mobile/core/routes/app_router.dart' as _i475;
import 'package:mobile/di/dependency_post_processor.dart' as _i373;
import 'package:mobile/di/register_module.dart' as _i698;
import 'package:mobile/features/auth/auth.dart' as _i572;
import 'package:mobile/features/auth/data/data.dart' as _i976;
import 'package:mobile/features/auth/data/datasources/auth_remote_datasource.dart'
    as _i1044;
import 'package:mobile/features/auth/data/repositories/auth_repository_impl.dart'
    as _i950;
import 'package:mobile/features/auth/domain/repositories/auth_repository.dart'
    as _i202;
import 'package:mobile/features/auth/domain/repositories/repository.dart'
    as _i539;
import 'package:mobile/features/auth/domain/usecases/change_password_usecase.dart'
    as _i246;
import 'package:mobile/features/auth/domain/usecases/login_usecase.dart'
    as _i1019;
import 'package:mobile/features/auth/domain/usecases/refresh_token_usecase.dart'
    as _i512;
import 'package:mobile/features/auth/domain/usecases/usecase.dart' as _i628;
import 'package:mobile/features/auth/presentation/controllers/change_password_controller.dart'
    as _i53;
import 'package:mobile/features/auth/presentation/controllers/login_controller.dart'
    as _i821;
import 'package:mobile/features/auth/presentation/controllers/logout_controller.dart'
    as _i885;
import 'package:mobile/features/duty_schedule/data/datasources/datasource.dart'
    as _i511;
import 'package:mobile/features/duty_schedule/data/datasources/duty_schedule_local_datasource.dart'
    as _i543;
import 'package:mobile/features/duty_schedule/data/datasources/duty_schedule_remote_datasource.dart'
    as _i661;
import 'package:mobile/features/duty_schedule/domain/repositories/repository.dart'
    as _i266;
import 'package:mobile/features/duty_schedule/domain/usecases/create_duty_schedule_usecase.dart'
    as _i214;
import 'package:mobile/features/duty_schedule/domain/usecases/delete_duty_schedule_usecase.dart'
    as _i620;
import 'package:mobile/features/duty_schedule/domain/usecases/fetch_duty_schedule_detail_usecase.dart'
    as _i992;
import 'package:mobile/features/duty_schedule/domain/usecases/fetch_list_duty_schedule_usecase.dart'
    as _i838;
import 'package:mobile/features/duty_schedule/domain/usecases/update_duty_schedule_usecase.dart'
    as _i453;
import 'package:mobile/features/menu/data/data.dart' as _i783;
import 'package:mobile/features/menu/data/datasources/main_menu_local_datasource.dart'
    as _i475;
import 'package:mobile/features/menu/data/datasources/main_nav_menu_local_datasource.dart'
    as _i942;
import 'package:mobile/features/menu/data/datasources/profile_menu_local_datasource.dart'
    as _i1058;
import 'package:mobile/features/menu/data/repositories/menu_repository_impl.dart'
    as _i140;
import 'package:mobile/features/menu/data/repositories/nav_repository_impl.dart'
    as _i504;
import 'package:mobile/features/menu/domain/repositories/repository.dart'
    as _i594;
import 'package:mobile/features/menu/domain/usecases/fetch_main_menu_usecase.dart'
    as _i435;
import 'package:mobile/features/menu/domain/usecases/fetch_main_nav_menu_usecase.dart'
    as _i325;
import 'package:mobile/features/menu/domain/usecases/fetch_profile_menu_usecase.dart'
    as _i1043;
import 'package:mobile/features/menu/menu.dart' as _i831;
import 'package:mobile/features/menu/presentation/controllers/main_menu_controller.dart'
    as _i639;
import 'package:mobile/features/menu/presentation/controllers/navigation_controller.dart'
    as _i73;
import 'package:mobile/features/menu/presentation/controllers/profile_menu_controller.dart'
    as _i107;
import 'package:mobile/features/splash/presentation/controllers/splash_controller.dart'
    as _i766;
import 'package:mobile/features/user/data/data.dart' as _i373;
import 'package:mobile/features/user/data/datasources/datasource.dart'
    as _i1005;
import 'package:mobile/features/user/data/datasources/user_local_datasource.dart'
    as _i833;
import 'package:mobile/features/user/data/datasources/user_remote_datasource.dart'
    as _i496;
import 'package:mobile/features/user/data/repositories/user_repository_impl.dart'
    as _i144;
import 'package:mobile/features/user/domain/repositories/repository.dart'
    as _i579;
import 'package:mobile/features/user/domain/usecases/fetch_list_user_usecase.dart'
    as _i787;
import 'package:mobile/features/user/domain/usecases/fetch_user_detail_usecase.dart'
    as _i1064;
import 'package:mobile/features/user/domain/usecases/fetch_user_profile_usecase.dart'
    as _i429;
import 'package:mobile/features/user/domain/usecases/update_user_profile_usecase.dart'
    as _i277;
import 'package:mobile/features/user/domain/usecases/usecase.dart' as _i397;
import 'package:mobile/features/user/presentation/controllers/fetch_list_user_controller.dart'
    as _i723;
import 'package:mobile/features/user/presentation/controllers/fetch_user_detail_controller.dart'
    as _i992;
import 'package:mobile/features/user/presentation/controllers/fetch_user_profile_controller.dart'
    as _i1018;
import 'package:mobile/features/user/presentation/controllers/update_user_profile_controller.dart'
    as _i608;
import 'package:mobile/features/user/user.dart' as _i981;
import 'package:mobile/shared/databases/database.dart' as _i799;
import 'package:mobile/shared/databases/duty_schedule_database.dart' as _i600;
import 'package:mobile/shared/databases/user_database.dart' as _i9;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.factory<_i475.MainMenuLocalDatasource>(
      () => _i475.MainMenuLocalDatasource(),
    );
    gh.factory<_i942.MainNavMenuLocalDatasource>(
      () => _i942.MainNavMenuLocalDatasource(),
    );
    gh.factory<_i1058.ProfileMenuLocalDatasource>(
      () => _i1058.ProfileMenuLocalDatasource(),
    );
    gh.singleton<_i895.Connectivity>(() => registerModule.connectivity);
    gh.singleton<_i475.AppRouter>(() => registerModule.appRouter);
    gh.singleton<_i361.Dio>(() => registerModule.provideDio());
    gh.singleton<_i600.DutyScheduleDatabase>(
      () => _i600.DutyScheduleDatabase(),
    );
    gh.singleton<_i9.UserDatabase>(() => _i9.UserDatabase());
    gh.lazySingleton<_i885.LogoutController>(() => _i885.LogoutController());
    gh.singleton<_i543.DutyScheduleLocalDatasource>(
      () => _i543.DutyScheduleLocalDatasourceImpl(
        gh<_i799.DutyScheduleDatabase>(),
      ),
    );
    gh.lazySingleton<_i766.SplashController>(
      () => _i766.SplashController(gh<_i475.AppRouter>()),
    );
    gh.singleton<_i594.MenuRepository>(
      () => _i140.MenuRepositoryImpl(
        mainMenuLocalDatasource: gh<_i783.MainMenuLocalDatasource>(),
        profileMenuLocalDatasource: gh<_i783.ProfileMenuLocalDatasource>(),
      ),
    );
    gh.singleton<_i313.DioServiceNetwork>(
      () => registerModule.dioServiceNetwork(gh<_i361.Dio>()),
    );
    gh.singleton<_i594.NavRepository>(
      () => _i504.NavRepositoryImpl(
        mainNavMenuLocalDatasource: gh<_i783.MainNavMenuLocalDatasource>(),
      ),
    );
    gh.singleton<_i833.UserLocalDatasource>(
      () => _i833.UserLocalDatasourceImpl(gh<_i9.UserDatabase>()),
    );
    gh.factory<_i661.DutyScheduleRemoteDatasource>(
      () => _i661.DutyScheduleRemoteDatasourceImpl(
        gh<_i511.DutyScheduleApiClient>(),
        gh<_i895.Connectivity>(),
        gh<_i361.Dio>(),
      ),
    );
    gh.factory<_i435.FetchMainMenuUsecase>(
      () => _i435.FetchMainMenuUsecase(gh<_i594.MenuRepository>()),
    );
    gh.factory<_i1043.FetchProfileMenuUsecase>(
      () => _i1043.FetchProfileMenuUsecase(gh<_i594.MenuRepository>()),
    );
    gh.factory<_i214.CreateDutyScheduleUsecase>(
      () => _i214.CreateDutyScheduleUsecase(gh<_i266.DutyScheduleRepository>()),
    );
    gh.factory<_i620.DeleteDutyScheduleUsecase>(
      () => _i620.DeleteDutyScheduleUsecase(gh<_i266.DutyScheduleRepository>()),
    );
    gh.factory<_i992.FetchDutyScheduleDetailUsecase>(
      () => _i992.FetchDutyScheduleDetailUsecase(
        gh<_i266.DutyScheduleRepository>(),
      ),
    );
    gh.factory<_i838.FetchListDutyScheduleUsecase>(
      () => _i838.FetchListDutyScheduleUsecase(
        gh<_i266.DutyScheduleRepository>(),
      ),
    );
    gh.factory<_i453.UpdateDutyScheduleUsecase>(
      () => _i453.UpdateDutyScheduleUsecase(gh<_i266.DutyScheduleRepository>()),
    );
    gh.singleton<_i572.AuthApiClient>(
      () => registerModule.authApiClient(gh<_i313.DioServiceNetwork>()),
    );
    gh.singleton<_i981.UserApiClient>(
      () => registerModule.userApiClient(gh<_i313.DioServiceNetwork>()),
    );
    gh.factory<_i325.FetchMainNavMenuUsecase>(
      () => _i325.FetchMainNavMenuUsecase(gh<_i594.NavRepository>()),
    );
    gh.lazySingleton<_i73.NavigationController>(
      () => _i73.NavigationController(
        fetchMainNavMenuUsecase: gh<_i831.FetchMainNavMenuUsecase>(),
      )..init(),
    );
    gh.factory<_i496.UserRemoteDatasource>(
      () => _i496.UserRemoteDatasourceImpl(
        gh<_i373.UserApiClient>(),
        gh<_i895.Connectivity>(),
        gh<_i361.Dio>(),
      ),
    );
    gh.factory<_i579.UserRepository>(
      () => _i144.UserRepositoryImpl(
        gh<_i1005.UserRemoteDatasource>(),
        gh<_i1005.UserLocalDatasource>(),
      ),
    );
    gh.factory<_i787.FetchListUserUsecase>(
      () => _i787.FetchListUserUsecase(gh<_i579.UserRepository>()),
    );
    gh.factory<_i1064.FetchUserDetailUsecase>(
      () => _i1064.FetchUserDetailUsecase(gh<_i579.UserRepository>()),
    );
    gh.factory<_i429.FetchUserProfileUsecase>(
      () => _i429.FetchUserProfileUsecase(gh<_i579.UserRepository>()),
    );
    gh.factory<_i277.UpdateUserProfileUsecase>(
      () => _i277.UpdateUserProfileUsecase(gh<_i579.UserRepository>()),
    );
    gh.lazySingleton<_i608.UpdateUserProfileController>(
      () => _i608.UpdateUserProfileController(
        updateUserProfileUsecase: gh<_i397.UpdateUserProfileUsecase>(),
        userRepository: gh<_i579.UserRepository>(),
      )..init(),
    );
    gh.lazySingleton<_i723.FetchListUserController>(
      () => _i723.FetchListUserController(
        fetchListUserUsecase: gh<_i397.FetchListUserUsecase>(),
      ),
    );
    gh.factory<_i1044.AuthRemoteDataSource>(
      () => _i1044.AuthRemoteDataSourceImpl(
        gh<_i976.AuthApiClient>(),
        gh<_i895.Connectivity>(),
      ),
    );
    gh.lazySingleton<_i1018.FetchUserProfileController>(
      () => _i1018.FetchUserProfileController(
        fetchUserProfileUsecase: gh<_i397.FetchUserProfileUsecase>(),
      )..init(),
    );
    gh.lazySingleton<_i992.FetchUserDetailController>(
      () => _i992.FetchUserDetailController(
        fetchUserDetailUsecase: gh<_i397.FetchUserDetailUsecase>(),
      ),
    );
    gh.factory<_i202.AuthRepository>(
      () => _i950.AuthRepositoryImpl(gh<_i976.AuthRemoteDataSource>()),
    );
    gh.factory<_i246.ChangePasswordUsecase>(
      () => _i246.ChangePasswordUsecase(gh<_i539.AuthRepository>()),
    );
    gh.lazySingleton<_i107.ProfileMenuController>(
      () => _i107.ProfileMenuController(
        fetchProfileMenuUsecase: gh<_i831.FetchProfileMenuUsecase>(),
        fetchUserProfileController: gh<_i1018.FetchUserProfileController>(),
      )..init(),
    );
    gh.lazySingleton<_i639.MainMenuController>(
      () => _i639.MainMenuController(
        fetchMainMenuUsecase: gh<_i831.FetchMainMenuUsecase>(),
        fetchUserProfileController: gh<_i1018.FetchUserProfileController>(),
      )..init(),
    );
    gh.factory<_i1019.LoginUsecase>(
      () => _i1019.LoginUsecase(gh<_i572.AuthRepository>()),
    );
    gh.factory<_i512.RefreshTokenUsecase>(
      () => _i512.RefreshTokenUsecase(gh<_i572.AuthRepository>()),
    );
    gh.singleton<_i373.DependencyPostProcessor>(
      () => _i373.DependencyPostProcessor(
        gh<_i289.DioServiceNetwork>(),
        gh<_i628.RefreshTokenUsecase>(),
      ),
    );
    gh.lazySingleton<_i53.ChangePasswordController>(
      () => _i53.ChangePasswordController(
        changePasswordUseCase: gh<_i628.ChangePasswordUsecase>(),
      )..init(),
    );
    gh.lazySingleton<_i821.LoginController>(
      () => _i821.LoginController(
        loginUseCase: gh<_i628.LoginUsecase>(),
        fetchUserProfileController: gh<_i1018.FetchUserProfileController>(),
      )..init(),
    );
    return this;
  }
}

class _$RegisterModule extends _i698.RegisterModule {}
