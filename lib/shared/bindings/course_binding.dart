// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/course/data/datasources/course_remote_datasource.dart';
import 'package:mobile/features/course/data/repositories/course_repository_impl.dart';
import 'package:mobile/features/course/domain/repositories/course_repository.dart';
import 'package:mobile/features/course/domain/usecases/usecase.dart';
import 'package:mobile/features/course/presentation/controllers/course_controller.dart';

Bindings courseBinding() {
  return BindingsBuilder(() {
    Get.lazyPut<FetchListCourseUsecase>(
      () => FetchListCourseUsecase(Get.find<CourseRepository>()),
    );
    Get.lazyPut<FetchCourseDetailUsecase>(
      () => FetchCourseDetailUsecase(Get.find<CourseRepository>()),
    );
    Get.lazyPut<CreateCourseUsecase>(
      () => CreateCourseUsecase(Get.find<CourseRepository>()),
    );
    Get.lazyPut<UpdateCourseUsecase>(
      () => UpdateCourseUsecase(Get.find<CourseRepository>()),
    );
    Get.lazyPut<PartialUpdateCourseUsecase>(
      () => PartialUpdateCourseUsecase(Get.find<CourseRepository>()),
    );
    Get.lazyPut<DeleteCourseUsecase>(
      () => DeleteCourseUsecase(Get.find<CourseRepository>()),
    );
    Get.lazyPut<EnrollCourseUsecase>(
      () => EnrollCourseUsecase(Get.find<CourseRepository>()),
    );
    Get.lazyPut<CourseRepository>(
      () => CourseRepositoryImpl(Get.find<CourseRemoteDataSource>()),
    );
    Get.lazyPut<CourseRemoteDataSource>(
      () => CourseRemoteDataSourceImpl(Get.find()),
    );
    Get.lazyPut<CourseController>(
      () => CourseController(
        fetchListCourseUsecase: Get.find<FetchListCourseUsecase>(),
        fetchCourseDetailUsecase: Get.find<FetchCourseDetailUsecase>(),
        createCourseUsecase: Get.find<CreateCourseUsecase>(),
        updateCourseUsecase: Get.find<UpdateCourseUsecase>(),
        partialUpdateCourseUsecase: Get.find<PartialUpdateCourseUsecase>(),
        deleteCourseUsecase: Get.find<DeleteCourseUsecase>(),
        enrollCourseUsecase: Get.find<EnrollCourseUsecase>(),
      ),
    );
  });
}
