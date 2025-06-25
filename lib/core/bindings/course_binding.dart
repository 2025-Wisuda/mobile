import 'package:get/get.dart';

import 'package:mobile/core/bindings/binding.dart';
import 'package:mobile/features/course/course.dart';
import 'package:mobile/shared/databases/database.dart';

enum CourseControllerType {
  fetchListCourse,
  fetchCourseDetail,
  createCourse,
  partialUpdateCourse,
  deleteCourse,
  enrollCourse,
  fetchMyCourse,
  courseForm,
  courseWrapper,
  detailCourse,
  fetchCourseSessionDetail,
  createCourseSession,
  partialUpdateCourseSession,
  deleteCourseSession,
  courseSessionForm,
  detailCourseSession,
  courseSessionWrapper,
}

class CourseBinding extends Bindings {
  @override
  void dependencies() {
    _registerCourseCore();
  }

  void _registerCourseCore() {
    CoreBinding.ensureCoreRegistered();

    if (!Get.isRegistered<CourseDatabase>()) {
      Get.put<CourseDatabase>(
        CourseDatabase(),
        permanent: true,
      );
    }

    if (!Get.isRegistered<CourseApiClient>()) {
      Get.lazyPut<CourseApiClient>(() => CourseApiClient(Get.find()));
    }

    if (!Get.isRegistered<CourseSessionApiClient>()) {
      Get.lazyPut<CourseSessionApiClient>(
          () => CourseSessionApiClient(Get.find()));
    }

    if (!Get.isRegistered<CourseRemoteDataSource>()) {
      Get.lazyPut<CourseRemoteDataSource>(
        () => CourseRemoteDataSourceImpl(
            Get.find<CourseApiClient>(), Get.find(), Get.find()),
      );
    }

    if (!Get.isRegistered<CourseSessionRemoteDataSource>()) {
      Get.lazyPut<CourseSessionRemoteDataSource>(
        () => CourseSessionRemoteDataSourceImpl(
            Get.find<CourseSessionApiClient>(), Get.find(), Get.find()),
      );
    }

    if (!Get.isRegistered<CourseLocalDatasource>()) {
      Get.lazyPut<CourseLocalDatasource>(
        () => CourseLocalDatasourceImpl(Get.find()),
      );
    }

    if (!Get.isRegistered<CourseRepository>()) {
      Get.lazyPut<CourseRepository>(
        () => CourseRepositoryImpl(Get.find<CourseRemoteDataSource>(),
            Get.find<CourseLocalDatasource>()),
      );
    }

    if (!Get.isRegistered<CourseSessionRepository>()) {
      Get.lazyPut<CourseSessionRepository>(
        () => CourseSessionRepositoryImpl(
            Get.find<CourseSessionRemoteDataSource>()),
      );
    }
  }

  void registerFetchListCourse() {
    if (!Get.isRegistered<FetchListCourseUsecase>()) {
      Get.lazyPut<FetchListCourseUsecase>(
        () => FetchListCourseUsecase(Get.find<CourseRepository>()),
      );
    }
    if (!Get.isRegistered<ListCourseController>()) {
      Get.lazyPut<ListCourseController>(
        () => ListCourseController(Get.find<FetchListCourseUsecase>()),
      );
    }
  }

  void registerFetchCourseDetail() {
    if (!Get.isRegistered<FetchCourseDetailUsecase>()) {
      Get.lazyPut<FetchCourseDetailUsecase>(
        () => FetchCourseDetailUsecase(Get.find<CourseRepository>()),
      );
    }
    if (!Get.isRegistered<DetailCourseController>()) {
      Get.lazyPut<DetailCourseController>(
        () => DetailCourseController(Get.find<FetchCourseDetailUsecase>()),
      );
    }
  }

  void registerCreateCourse() {
    if (!Get.isRegistered<CreateCourseUsecase>()) {
      Get.lazyPut<CreateCourseUsecase>(
        () => CreateCourseUsecase(Get.find<CourseRepository>()),
      );
    }
  }

  void registerPartialUpdateCourse() {
    if (!Get.isRegistered<PartialUpdateCourseUsecase>()) {
      Get.lazyPut<PartialUpdateCourseUsecase>(
        () => PartialUpdateCourseUsecase(Get.find<CourseRepository>()),
      );
    }
  }

  void registerDeleteCourse() {
    if (!Get.isRegistered<DeleteCourseUsecase>()) {
      Get.lazyPut<DeleteCourseUsecase>(
        () => DeleteCourseUsecase(Get.find<CourseRepository>()),
      );
    }
    if (!Get.isRegistered<DeleteCourseController>()) {
      Get.lazyPut<DeleteCourseController>(
        () => DeleteCourseController(Get.find<DeleteCourseUsecase>()),
      );
    }
  }

  void registerEnrollCourse() {
    if (!Get.isRegistered<EnrollCourseUsecase>()) {
      Get.lazyPut<EnrollCourseUsecase>(
        () => EnrollCourseUsecase(Get.find<CourseRepository>()),
      );
    }
    if (!Get.isRegistered<EnrollCourseController>()) {
      Get.lazyPut<EnrollCourseController>(
        () => EnrollCourseController(Get.find<EnrollCourseUsecase>()),
      );
    }
  }

  void registerFetchMyCourse() {
    if (!Get.isRegistered<FetchMyCourseUsecase>()) {
      Get.lazyPut<FetchMyCourseUsecase>(
        () => FetchMyCourseUsecase(Get.find<CourseRepository>()),
      );
    }
    if (!Get.isRegistered<MyCourseController>()) {
      Get.lazyPut<MyCourseController>(
        () => MyCourseController(Get.find<FetchMyCourseUsecase>()),
      );
    }
  }

  void registerCourseForm() {
    registerCreateCourse();
    registerPartialUpdateCourse();
    if (!Get.isRegistered<CourseFormController>()) {
      Get.lazyPut<CourseFormController>(
        () => CourseFormController(Get.find<CreateCourseUsecase>(),
            Get.find<PartialUpdateCourseUsecase>()),
      );
    }
  }

  void registerCourseWrapper() {
    if (!Get.isRegistered<CourseWrapperController>()) {
      Get.lazyPut<CourseWrapperController>(
        () => CourseWrapperController(),
      );
    }
  }

  void registerCourseSessionWrapper() {
    if (!Get.isRegistered<CourseSessionWrapperController>()) {
      Get.lazyPut<CourseSessionWrapperController>(
        () => CourseSessionWrapperController(),
      );
    }
  }

  void registerFetchCourseSessionDetail() {
    if (!Get.isRegistered<FetchCourseSessionDetailUsecase>()) {
      Get.lazyPut<FetchCourseSessionDetailUsecase>(
        () => FetchCourseSessionDetailUsecase(
            Get.find<CourseSessionRepository>()),
      );
    }
    if (!Get.isRegistered<DetailCourseSessionController>()) {
      Get.lazyPut<DetailCourseSessionController>(
        () => DetailCourseSessionController(
            Get.find<FetchCourseSessionDetailUsecase>()),
      );
    }
  }

  void registerCreateCourseSession() {
    if (!Get.isRegistered<CreateCourseSessionUsecase>()) {
      Get.lazyPut<CreateCourseSessionUsecase>(
        () => CreateCourseSessionUsecase(Get.find<CourseSessionRepository>()),
      );
    }
  }

  void registerPartialUpdateCourseSession() {
    if (!Get.isRegistered<PartialUpdateCourseSessionUsecase>()) {
      Get.lazyPut<PartialUpdateCourseSessionUsecase>(
        () => PartialUpdateCourseSessionUsecase(
            Get.find<CourseSessionRepository>()),
      );
    }
  }

  void registerDeleteCourseSession() {
    if (!Get.isRegistered<DeleteCourseSessionUsecase>()) {
      Get.lazyPut<DeleteCourseSessionUsecase>(
        () => DeleteCourseSessionUsecase(Get.find<CourseSessionRepository>()),
      );
    }
    if (!Get.isRegistered<DeleteCourseSessionController>()) {
      Get.lazyPut<DeleteCourseSessionController>(
        () => DeleteCourseSessionController(
            Get.find<DeleteCourseSessionUsecase>()),
      );
    }
  }

  void registerCourseSessionForm() {
    registerCreateCourseSession();
    registerPartialUpdateCourseSession();

    final labScheduleBinding = LabScheduleBinding();
    labScheduleBinding.dependencies();
    labScheduleBinding.registerLabAvailability();

    if (!Get.isRegistered<CourseSessionFormController>()) {
      Get.lazyPut<CourseSessionFormController>(
        () => CourseSessionFormController(
            Get.find<CreateCourseSessionUsecase>(),
            Get.find<PartialUpdateCourseSessionUsecase>()),
      );
    }
  }

  void registerAllCourse() {
    registerFetchListCourse();
    registerFetchCourseDetail();
    registerDeleteCourse();
    registerEnrollCourse();
    registerFetchMyCourse();
    registerCourseForm();
    registerCourseWrapper();
  }

  void registerAllCourseSession() {
    registerFetchCourseSessionDetail();
    registerDeleteCourseSession();
    registerCourseSessionForm();
    registerCourseSessionWrapper();
  }
}

class FetchListCourseBinding extends CourseBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerFetchListCourse();
  }
}

class FetchCourseDetailBinding extends CourseBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerFetchCourseDetail();
  }
}

class CreateCourseBinding extends CourseBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerCourseForm();

    final userBinding = UserBinding();
    userBinding.dependencies();
    userBinding.registerFetchListUser();
  }
}

class UpdateCourseBinding extends CourseBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerCourseForm();

    final userBinding = UserBinding();
    userBinding.dependencies();
    userBinding.registerFetchListUser();
  }
}

class DeleteCourseBinding extends CourseBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerDeleteCourse();
  }
}

class EnrollCourseBinding extends CourseBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerEnrollCourse();
  }
}

class FetchMyCourseBinding extends CourseBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerFetchMyCourse();
  }
}

class FetchCourseSessionDetailBinding extends CourseBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerFetchCourseSessionDetail();
  }
}

class CreateCourseSessionBinding extends CourseBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerCourseSessionForm();

    final userBinding = UserBinding();
    userBinding.dependencies();
    userBinding.registerFetchListUser();
  }
}

class UpdateCourseSessionBinding extends CourseBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerCourseSessionForm();

    final userBinding = UserBinding();
    userBinding.dependencies();
    userBinding.registerFetchListUser();
  }
}

class DeleteCourseSessionBinding extends CourseBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerDeleteCourseSession();
  }
}

class MultiCourseBinding extends CourseBinding {
  final List<CourseControllerType> controllers;
  final List<UserControllerType>? userControllers;

  MultiCourseBinding({
    required this.controllers,
    this.userControllers,
  });

  @override
  void dependencies() {
    super.dependencies();

    for (final controller in controllers) {
      switch (controller) {
        case CourseControllerType.fetchListCourse:
          registerFetchListCourse();
          break;
        case CourseControllerType.fetchCourseDetail:
          registerFetchCourseDetail();
          break;
        case CourseControllerType.createCourse:
          registerCreateCourse();
          break;
        case CourseControllerType.partialUpdateCourse:
          registerPartialUpdateCourse();
          break;
        case CourseControllerType.deleteCourse:
          registerDeleteCourse();
          break;
        case CourseControllerType.enrollCourse:
          registerEnrollCourse();
          break;
        case CourseControllerType.fetchMyCourse:
          registerFetchMyCourse();
          break;
        case CourseControllerType.courseForm:
          registerCourseForm();
          break;
        case CourseControllerType.courseWrapper:
          registerCourseWrapper();
          break;
        case CourseControllerType.detailCourse:
          registerFetchCourseDetail();
          break;
        case CourseControllerType.fetchCourseSessionDetail:
          registerFetchCourseSessionDetail();
          break;
        case CourseControllerType.createCourseSession:
          registerCreateCourseSession();
          break;
        case CourseControllerType.partialUpdateCourseSession:
          registerPartialUpdateCourseSession();
          break;
        case CourseControllerType.deleteCourseSession:
          registerDeleteCourseSession();
          break;
        case CourseControllerType.courseSessionForm:
          registerCourseSessionForm();
          break;
        case CourseControllerType.detailCourseSession:
          registerFetchCourseSessionDetail();
          break;
        case CourseControllerType.courseSessionWrapper:
          registerCourseSessionWrapper();
          break;
      }
    }

    // Register user controllers if provided
    if (userControllers != null && userControllers!.isNotEmpty) {
      final userBinding = UserBinding();
      userBinding.dependencies();

      for (final controller in userControllers!) {
        switch (controller) {
          case UserControllerType.fetchListUser:
            userBinding.registerFetchListUser();
            break;
          case UserControllerType.fetchUserDetail:
            userBinding.registerFetchUserDetail();
            break;
          case UserControllerType.fetchUserProfile:
            userBinding.registerFetchUserProfile();
            break;
          case UserControllerType.updateUserProfile:
            userBinding.registerUpdateUserProfile();
            break;
        }
      }
    }
  }
}

class CourseWithUserBinding extends CourseBinding {
  final List<CourseControllerType> courseControllers;
  final List<UserControllerType> userControllers;

  CourseWithUserBinding({
    required this.courseControllers,
    required this.userControllers,
  });

  @override
  void dependencies() {
    super.dependencies();

    for (final controller in courseControllers) {
      switch (controller) {
        case CourseControllerType.fetchListCourse:
          registerFetchListCourse();
          break;
        case CourseControllerType.fetchCourseDetail:
          registerFetchCourseDetail();
          break;
        case CourseControllerType.createCourse:
          registerCreateCourse();
          break;
        case CourseControllerType.partialUpdateCourse:
          registerPartialUpdateCourse();
          break;
        case CourseControllerType.deleteCourse:
          registerDeleteCourse();
          break;
        case CourseControllerType.enrollCourse:
          registerEnrollCourse();
          break;
        case CourseControllerType.fetchMyCourse:
          registerFetchMyCourse();
          break;
        case CourseControllerType.courseForm:
          registerCourseForm();
          break;
        case CourseControllerType.courseWrapper:
          registerCourseWrapper();
          break;
        case CourseControllerType.detailCourse:
          registerFetchCourseDetail();
          break;
        case CourseControllerType.fetchCourseSessionDetail:
          registerFetchCourseSessionDetail();
          break;
        case CourseControllerType.createCourseSession:
          registerCreateCourseSession();
          break;
        case CourseControllerType.partialUpdateCourseSession:
          registerPartialUpdateCourseSession();
          break;
        case CourseControllerType.deleteCourseSession:
          registerDeleteCourseSession();
          break;
        case CourseControllerType.courseSessionForm:
          registerCourseSessionForm();
          break;
        case CourseControllerType.detailCourseSession:
          registerFetchCourseSessionDetail();
          break;
        case CourseControllerType.courseSessionWrapper:
          registerCourseSessionWrapper();
          break;
      }
    }

    final userBinding = UserBinding();
    userBinding.dependencies();

    for (final controller in userControllers) {
      switch (controller) {
        case UserControllerType.fetchListUser:
          userBinding.registerFetchListUser();
          break;
        case UserControllerType.fetchUserDetail:
          userBinding.registerFetchUserDetail();
          break;
        case UserControllerType.fetchUserProfile:
          userBinding.registerFetchUserProfile();
          break;
        case UserControllerType.updateUserProfile:
          userBinding.registerUpdateUserProfile();
          break;
      }
    }
  }
}

class CreateCourseWithUserBinding extends CourseWithUserBinding {
  CreateCourseWithUserBinding()
      : super(
          courseControllers: [CourseControllerType.courseForm],
          userControllers: [UserControllerType.fetchListUser],
        );
}

class UpdateCourseWithUserBinding extends CourseWithUserBinding {
  UpdateCourseWithUserBinding()
      : super(
          courseControllers: [CourseControllerType.courseForm],
          userControllers: [UserControllerType.fetchListUser],
        );
}

class CreateCourseSessionWithUserBinding extends CourseWithUserBinding {
  CreateCourseSessionWithUserBinding()
      : super(
          courseControllers: [CourseControllerType.courseSessionForm],
          userControllers: [UserControllerType.fetchListUser],
        );
}

class UpdateCourseSessionWithUserBinding extends CourseWithUserBinding {
  UpdateCourseSessionWithUserBinding()
      : super(
          courseControllers: [CourseControllerType.courseSessionForm],
          userControllers: [UserControllerType.fetchListUser],
        );
}
