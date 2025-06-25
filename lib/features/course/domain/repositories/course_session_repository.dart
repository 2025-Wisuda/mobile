import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

abstract class CourseSessionRepository {
  Future<Either<Failure, BaseResponseEntity<CourseSessionEntity>>>
      fetchCourseSessionDetail({
    required String courseId,
    required String courseSessionId,
  });

  Future<Either<Failure, BaseResponseEntity<CourseSessionEntity>>>
      createCourseSession({
    required String courseId,
    required SaveCourseSessionRequestEntity data,
  });

  Future<Either<Failure, BaseResponseEntity<CourseSessionEntity>>>
      partialUpdateCourseSession({
    required String courseId,
    required SaveCourseSessionRequestEntity data,
    required String courseSessionId,
  });

  Future<Either<Failure, void>> deleteCourseSession({
    required String courseId,
    required String courseSessionId,
  });
}
