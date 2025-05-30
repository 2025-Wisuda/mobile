// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/course/data/datasources/course_session_remote_datasource.dart';
import 'package:mobile/features/course/data/repositories/course_session_repository_impl.dart';
import 'package:mobile/features/course/domain/repositories/course_session_repository.dart';
import 'package:mobile/features/course/domain/usecases/usecase.dart';
import 'package:mobile/features/course/presentation/controllers/course_session_controller.dart';

Bindings courseSessionBinding() {
  return BindingsBuilder(() {
    Get.lazyPut<CourseSessionController>(
      () => CourseSessionController(
        fetchListCourseSessionUsecase:
            Get.find<FetchListCourseSessionUsecase>(),
        fetchCourseSessionDetailUsecase:
            Get.find<FetchCourseSessionDetailUsecase>(),
        createCourseSessionUsecase: Get.find<CreateCourseSessionUsecase>(),
        updateCourseSessionUsecase: Get.find<UpdateCourseSessionUsecase>(),
        partialUpdateCourseSessionUsecase:
            Get.find<PartialUpdateCourseSessionUsecase>(),
        deleteCourseSessionUsecase: Get.find<DeleteCourseSessionUsecase>(),
      ),
    );
    Get.lazyPut<FetchListCourseSessionUsecase>(
      () => FetchListCourseSessionUsecase(Get.find<CourseSessionRepository>()),
    );
    Get.lazyPut<FetchCourseSessionDetailUsecase>(
      () =>
          FetchCourseSessionDetailUsecase(Get.find<CourseSessionRepository>()),
    );
    Get.lazyPut<CreateCourseSessionUsecase>(
      () => CreateCourseSessionUsecase(Get.find<CourseSessionRepository>()),
    );
    Get.lazyPut<UpdateCourseSessionUsecase>(
      () => UpdateCourseSessionUsecase(Get.find<CourseSessionRepository>()),
    );
    Get.lazyPut<PartialUpdateCourseSessionUsecase>(
      () => PartialUpdateCourseSessionUsecase(
        Get.find<CourseSessionRepository>(),
      ),
    );
    Get.lazyPut<DeleteCourseSessionUsecase>(
      () => DeleteCourseSessionUsecase(Get.find<CourseSessionRepository>()),
    );
    Get.lazyPut<CourseSessionRepository>(
      () => CourseSessionRepositoryImpl(
        Get.find<CourseSessionRemoteDataSource>(),
      ),
    );
    Get.lazyPut<CourseSessionRemoteDataSource>(
      () => CourseSessionRemoteDataSourceImpl(Get.find()),
    );
  });
}
